module AmazonS3
  module Patches
    module ApplicationHelper
      def thumbnail_tag(attachment)
        link_to(
          image_tag(
            attachment.thumbnail_s3, 
            data: {thumbnail: thumbnail_path(attachment)}
          ),
          AmazonS3::Connection.object_url(attachment.disk_filename_s3),
          title: attachment.filename
        )
      end
    end
  end
end

ApplicationHelper.include(AmazonS3::Patches::ApplicationHelper)