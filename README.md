# PrismaticTurtle

**PrismaticTurtle** is a Turtle WoW (https://turtle-wow.org/) addon that allows players to send colored chat messages using various color patterns and themes. It supports multiple chat channels and leverages SuperWoW and SuperAPI for longer messages. Due to limitations with Turtle WoW’s chat system, messages containing item links are sent uncolored to avoid errors. Custom colored item links and names are technically possible, but difficult to put into an addon due to TWOW's LFT chat parsing.

For ease of use, Prismatic Turtle does not use a UI.  Color patterns are relegated to their own slash command.  
Example:  /blue say my text is blue

## Features
- **Commands**: Send colored messages with the following slash commands:
  - `/rainbow`: Per-character rainbow colors.
  - `/black`, `/blue`, `/red`, `/green`, `/purple`, `/orange`, `/yellow`: Single-color messages.
  - `/nature`: Per-word alternating earthy tones (forest green, olive green, dark brown, tan, muted ochre).
  - `/fire`: Per-word alternating fiery tones (red, orange, light orange, dark red, crimson).
  - `/ice`: Per-word alternating icy tones (light blue, cyan, pale blue, deep blue, white).
  - `/shadow`: Per-word alternating shadowy tones (purple, dark purple, black, dark gray, violet).
- **Supported Channels**: `say`, `yell`, `party`, `raid`, `guild`, `whisper`, `emote`, `channel` (e.g., `/black 6 message` for channel 6).
- **Whisper Support**: Use `/<command> whisper <target> <message>` (e.g., `/blue whisper Friendname Hello`).
- **Item Link Handling**: Messages with item links (e.g., `[Gemstone of Ysera]`) are sent uncolored, with a console warning.

## Installation
1. **Download**: Obtain the latest release from the [GitHub repository](https://github.com/mvrak/PrismaticTurtle).
1. **Extract**: Place the `PrismaticTurtle` folder in `World of Warcraft\_classic_era_\Interface\AddOns\`.
1. **Dependencies**: Ensure `SuperWoWHook.dll` is in the Turtle WoW root folder and listed in `dlls.txt`. Install SuperWoW and SuperAPI (check their GitHub for the latest versions).
1. **Enable**: Verify the addon is enabled in the WoW AddOns menu.
1. **Reload**: Restart WoW or use `/reload` to load the addon.

## Usage
- **Syntax**: `/<command> <channel> <message>` or `/<command> whisper <target> <message>`
  - Examples:
    - `/black say test` → Sends “test” in dark gray to the SAY channel.
    - `/purple say Hello world` → Sends “Hello world” in purple.
    - `/fire say Burn bright` → Sends words in alternating fire tones (red, orange, etc.).
    - `/ice whisper Friendname Cool message` → Sends words in alternating ice tones to Friendname.
    - `/shadow emote sinks into the void` → Sends emote in alternating shadow tones.
    - `/rainbow say Colorful text` → Sends per-character rainbow-colored text.
    - `/black say test [Gemstone of Ysera]` → Don't do this as it will just output the uncolored version.  Sends “test [Gemstone of Ysera]” uncolored with a clickable link, with console warning.
- **Notes**:
  - Item links cannot be colored due to `ChatThrottleLib` restrictions in Turtle WoW.
  - If messages fail or are cut off, you may be reaching the script max length.  This is increased by using SuperWoW/SuperAPI.  Keep messages short (5-6 words for `/nature`, `/fire`, `/ice`, `/shadow`; 20 characters for `/rainbow`) to avoid the 255-character limit.

## Troubleshooting
- **Item Link Issues**:
  - Messages with item links are sent uncolored to avoid errors.
  - If the message doesn’t appear, check for console warnings like “PrismaticTurtle: Warning: Failed to send message: ...”.
- **Dependencies**:
  - Ensure `SuperWoWHook.dll` is in `dlls.txt` and SuperWoW/SuperAPI are installed to avoid issues with message length.

## Known Issues
- Messages with item links may not appear due to `ChatThrottleLib`’s validation or queuing in Turtle WoW. The addon sends these uncolored to minimize errors.
- Multi-color themes (`/nature`, `/fire`, `/ice`, `/shadow`, `/rainbow`) may hit the 255-character limit with long messages.  Each color change adds 10 characters! That's why only rainbow uses per-character colors.

## License
- MIT License (see [LICENSE](LICENSE) file).

## Credits
- **Author**: Marilketh
- **AI**: Grok
- **Inspiration**: Some spammers used colored text, so I figured players should have fun also.

## Version
- **1.00** (August 2025): Initial Release
