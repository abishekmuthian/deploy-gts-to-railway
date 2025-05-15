# Get the GotoSocial image
FROM superseriousbusiness/gotosocial:latest AS gts

FROM alpine
COPY --from=gts /gotosocial /gotosocial

# Copy the setup script from the current directory to the container
COPY ./.railway/setup-volume.sh /setup-volume.sh

# Expose the port
EXPOSE 8080

# Make the script executable
RUN chmod +x /setup-volume.sh

# Set the command to run the setup script
CMD ["/setup-volume.sh"]
