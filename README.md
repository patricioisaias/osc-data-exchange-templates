# OSC Data Exchange Templates

This repository contains a collection of templates demonstrating the usage of the [Open Sound Control](https://en.wikipedia.org/wiki/Open_Sound_Control) (OSC) protocol to exchange data between [Processing](https://processing.org/), [Max](https://cycling74.com/products/max), and [Pure Data](https://puredata.info/). These templates serve as a foundation for multimedia and interactive art projects, enabling seamless communication between different platforms.

![Project Screenshot](/images/project-screenshot.jpg)

## Setup

### Processing oscP5 Library:

To run these templates, you need to install the `oscP5` library by [Andreas Schlegel](https://www.sojamo.de/). Follow these steps to install the library:

1. Open the Processing IDE.
2. Navigate to **Sketch -> Import Library... -> Manage Libraries...**
3. Search for `oscP5`.
4. Click on **"Install"** to add the library to your Processing environment.

## Usage

These templates provide a starting point for your interactive projects. Here's how you can use them:

1. **Configure IP Address:**

   - Open the Processing sketch.
   - Locate the `remoteIp` variable and replace the existing IP address with your current one. If you're unsure about your IP address, open the terminal and type `ipconfig`. Look for the IPv4 address and use it as your `remoteIp`.

2. **Customize OSC Ports:**

   - Ensure that you customize the OSC ports in both the Processing sketch and your Max/MSP or Pure Data patches to align with your specific requirements.

3. **Run the Processing Sketch:**

   - Execute the Processing sketch to initiate OSC communication.

4. **Verify Communication:**
   - Confirm whether your Max/MSP or Pure Data patch is successfully receiving or sending data. Check the console for any error messages or debug information to troubleshoot potential issues.

## License

The content of this repository is licensed under the **MIT License** - see the [LICENSE](/LICENSE.txt) file for details.

## Contact

For any inquiries or issues, feel free to contact the author:

- **Name:** Patricio Isaías
- **Email:** patricio.isaiascv@gmail.com
- **Linktree:** [Patricio Isaías](https://linktr.ee/patricioisaias)
