# frozen_string_literal
require 'spec_helper'

RSpec.describe CopyrightNotice::CopyrightNoticeHelper do

  include CopyrightNotice::CopyrightNoticeHelper

  describe "#copyright_notice" do

    subject {
      copyright_notice(start_year: start_year, name: "Katana Code Ltd.")
    }

    let(:start_year) { 2019 }

    it { is_expected.to be_html_safe }

    context "when year is the same" do

      let(:start_year) { Date.today.year }

      it { is_expected.to eql("&copy; Katana Code Ltd. #{start_year}") }

    end

    context "when one year difference" do

      let(:start_year) { Date.today.year - 1 }

      it {
        is_expected.to eql("&copy; Katana Code Ltd. #{start_year}-#{Date.today.year}")
      }

    end

    context "when more than one year difference" do

      let(:start_year) { Date.today.year - 3 }

      it {
        is_expected.to eql("&copy; Katana Code Ltd. #{start_year}-#{Date.today.year}")
      }

    end

  end

end
