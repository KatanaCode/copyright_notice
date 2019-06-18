# frozen_string_literal

module CopyrightNoticeHelper

  require "active_support/core_ext/string/output_safety"

  YEAR_SEPARATOR = "-"

  def copyright_notice(start_year:, name:)
    date_range = [start_year, Date.today.year].uniq.join(YEAR_SEPARATOR)
    I18n.t("copyright_notice", name: name, dates: date_range).html_safe
  end

end
