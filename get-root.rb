# get root and terbitan

h = {}

File.readlines('KamusDewan4.txt').each do |line|
    # puts line
    s = line.split()
    # puts s.length
    # puts s[0]
    
    k = s[0]
    if !h.has_key?(k)
        h[s[0]] = []
    end

    s.each do |word|
        #puts "#{word}" if word.include? s[0]
        if word.include? k
            w = word.sub(/[:;,.]/,'')
            # puts w
            h[k] << w if !h[k].include? w
        end
        #puts word
    end
end

h.each do |k,v|
    puts "#{k}: #{v}"
end
