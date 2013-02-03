#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

if __FILE__ == $0
  keywords = [""]
	ARGV.each do |file|
    new_keywords = []
    File.read(file).each do |kwd|
      # 空き行があれば無視
      next if kwd.chomp == ""
      keywords.each do |k|
        tmp = (k + " " + kwd.chomp).strip
        new_keywords << tmp unless tmp == ""
      end
    end
    keywords = new_keywords
	end

	keywords.each do |k|
		puts k
	end
end
