# get root and terbitan

h = {}
i = {}

File.readlines('KamusDewan4.txt').each do |line|
    # puts line
    s = line.split()
    # puts s.length
    # puts s[0]
    
    #if !h.has_key? s[0]
    # h[s[0]] = []
    #end

    s.each do |w|
        w.gsub! /[():,;.]/,''
    end

    # s.each do |word|
    #     #puts "#{word}" if word.include? s[0]
    #     if word.include? s[0]
    #         # w = word.sub(/[:;,.]/,'')
    #         # puts w
    #         # h[s[0]] << word if !h[s[0]].include? word
    #         # puts h[s[0]].is_a? Array
    #         # h[s[0]].append word
    #         #h[k] << w if w.grep /s[0]?s[1,s.length]/
    #     end
    #     # w.match(/k[0]?)
    #     #puts word
    # end

    # using grep

    # if !i.has_key? s[0]
    #    i[s[0]] = []
    # end


    xyz = s[0]
    #puts "==>s[0]"
    #puts xyz.is_a? String

    # puts xyz
    xyz = s[0].to_s
    # puts "==>s[0].to_s"
    # puts xyz.is_a?(String)

    # puts "==>xyz #{xyz}"
    # puts "==>xyz[0] #{xyz[0]}"

    # i[s[0]] << s.grep(/w[0]?w[1,w.length]/)
    # s.grep /w[0]?w[1,w.length]/
    #puts s.grep /a/
    # ic = w[0].to_s
    # rc = w[1,w.length]
    # puts "==>s.grep #{s}"
    # puts s.grep /ac/
    # puts "==> s.select "
    # need to interpolate
    # puts s.select { |z| /#{xyz[0]}?#{xyz[1,xyz.length]}/ =~ z }
    if !i.has_key? s[0]
        i[s[0]]  = s.select { |z| /#{xyz[0]}?#{xyz[1,xyz.length]}/ =~ z }
    else
        tmp = s.select { |z| /#{xyz[0]}?#{xyz[1,xyz.length]}/ =~ z }
        tmp.each do |w|
            i[s[0]] << w 
        end
    end
    # puts i[s[0]].is_a? String
    i[s[0]] = i[s[0]].uniq
end

# puts "==>h"
# h.each do |k,v|
#     puts "#{k}: #{v}"
# end

# puts "==>i"
i.each do |k,v|
    puts "#{k}: #{v}" if i[k].length > 1
    # puts i[k].length
end
