/*
 * Author: Patricio Isaías (https://linktr.ee/patricioisaias)
 * Creation date: 2023-10-23
 * Description: Send and receive data using the Open Sound Control (OSC) protocol
 * License: MIT
 */

// Import libraries
import netP5.*;
import oscP5.*;

// Global variables for OSC communication
OscP5 oscP5Send; // OSC sender object for sending messages
OscP5 oscP5Receive; // OSC receiver object for receiving messages
NetAddress myRemoteLocation; // Remote OSC address
int sendPort = 9600; // Port number for sending OSC messages
int receivePort = 9700; // Port number for receiving OSC messages
String remoteIp = "192.168.1.11"; // IP address of the remote location (change to your localhost)

// Constants for OSC addresses
final String OSC_ADDRESS_B1 = "/b1";
final String OSC_ADDRESS_B2 = "/b2";

// Sketch global variables
Ball ball;
int ballColor = 0; // Default ball color

void setup() {
  size(500, 500);
  ball = new Ball(width / 2, height / 2);

  // Initialize OSC objects for sending messages
  oscP5Send = new OscP5(this, sendPort); // Initialize OSC sender
  myRemoteLocation = new NetAddress(remoteIp, sendPort); // Set remote OSC address for sending messages

  // Initialize OSC objects for receiving messages
  oscP5Receive = new OscP5(this, receivePort); // Initialize OSC receiver
  oscP5Receive.plug(this, "setAmp", "/amp"); // Register the setAmp method to handle OSC messages with the address "/amp"
}

// Callback function to handle incoming OSC messages with the "/amp" tag
public void setAmp(int amp) {
  ballColor = amp; // Set the ball color based on the received OSC message
}

void sendOSCMessage(String address) {
  OscMessage message = new OscMessage(address);
  message.add(1);
  oscP5Send.send(message, myRemoteLocation);
}

void draw() {
  background(220);
  ball.update();
  ball.display();
}

// Ball class for animation
class Ball {
  int x, y;
  int radius;
  int speed;

  // Constructor to initialize the Ball object
  Ball(int x, int y) {
    this.x = x;
    this.y = y;
    this.radius = width / 6;
    this.speed = 12;
  }

  // Update the ball's position and handle collisions
  void update() {
    this.y += this.speed;

    // Collision detection with top and bottom canvas edges
    if (this.y > height - this.radius) {
      this.y = height - this.radius;
      this.speed *= -1;
      // Send OSC message
      sendOSCMessage(OSC_ADDRESS_B1);
    } else if (this.y < this.radius) {
      this.y = this.radius;
      this.speed *= -1;
      // Send OSC message
      sendOSCMessage(OSC_ADDRESS_B2);
    }
  }

  // Display the ball on the canvas
  void display() {
    fill(ballColor, 0, 0);
    noStroke();
    ellipse(this.x, this.y, this.radius * 2, this.radius * 2);
  }
}
