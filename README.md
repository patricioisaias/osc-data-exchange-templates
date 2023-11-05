# OSC Data Exchange Templates

This repository contains several templates demonstrating how to use the [Open Sound Control](https://en.wikipedia.org/wiki/Open_Sound_Control) protocol to exchange data between [Processing](https://processing.org/), [Max](https://cycling74.com/products/max), and [Pure Data](https://puredata.info/). These examples serve as a starting point for anyone interested in creating multimedia or interactive art projects. Explore these templates to learn how to establish communication between different platforms, customize OSC ports, and exchange data seamlessly.

![Project Screenshot](/images/project-screenshot.jpg)

## Setup

### Processing

In order to run this template, you need to install the `oscP5` library by [Andreas Schlegel](https://www.sojamo.de/). Follow these steps to install the library:

1. Open the Processing IDE.
2. Go to Sketch -> Import Library... -> Manage Libraries...
3. Search for `oscP5`.
4. Click on "Install" to install the library.

## Usage

1. Open the Processing sketch and navigate to line 29. Replace the existing IPv4 address with your current one. If you're unsure of your IP address, open the terminal and type `ipconfig`.
2. Ensure that you customize the OSC ports in both the Processing sketch and your Max/MSP or Pure Data patches to align with your specific requirements.
3. Run the Processing sketch.
4. Verify if your Max or Pure Data patch is successfully receiving or sending data.

## Contact

For any inquiries or issues, feel free to contact the author:

- **Name:** Patricio Isaías
- **Email:** patricio.isaiascv@gmail.com
- **Linktree:** [Patricio Isaías](https://linktr.ee/patricioisaias)
