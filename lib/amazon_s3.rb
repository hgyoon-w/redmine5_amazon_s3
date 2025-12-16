require_relative 'amazon_s3/patches/attachment'
require_relative 'amazon_s3/patches/attachments_controller'
require_relative 'amazon_s3/patches/application_helper'
require_relative 'amazon_s3/thumbnail'
require_relative 'amazon_s3/configuration'
require_relative 'amazon_s3/connection'

#AttachmentsController.send(:include, AmazonS3::AttachmentsControllerPatch)
#Attachment.send(:include, AmazonS3::AttachmentPatch)
#ApplicationHelper.send(:include, AmazonS3::ApplicationHelper)
