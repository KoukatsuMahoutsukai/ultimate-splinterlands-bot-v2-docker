MARKER_FILE="/opt/SPLbot/.extracted"

# Check if the files are already extracted
if [ ! -f "$MARKER_FILE" ]; then
    # Extract the ZIP file
    cd /opt/SPLbot
    unzip linux-x64.zip
    rm linux-x64.zip
    cd linux-x64
    chmod +x ./Ultimate\ Splinterlands\ Bot\ V2

    # Create the marker file to indicate that extraction is done
    touch "$MARKER_FILE"

    # Run the shell or bash for editing files
    /bin/bash
fi

# The container will run the command specified in CMD
cd /opt/SPLbot/linux-x64
chmod +x ./Ultimate\ Splinterlands\ Bot\ V2
exec "$@"

