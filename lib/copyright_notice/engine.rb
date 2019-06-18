# frozen_string_literal

module CopyrightNotice
  class Engine < ::Rails::Engine

    isolate_namespace CopyrightNotice

    require_relative "../../app/helpers/copyright_notice/copyright_notice_helper"

    initializer 'local_helper.action_controller' do
      ActiveSupport.on_load :action_controller do
        helper CopyrightNotice::CopyrightNoticeHelper
      end
    end

  end
end
