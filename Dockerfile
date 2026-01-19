FROM bash:4.4            
WORKDIR /logger            
COPY time_stamp.sh /time_stamp.sh
RUN chmod +x /time_stamp.sh
CMD ["bash", "/time_stamp.sh"]

