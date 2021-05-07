def excute_block_object_to_method(&block)
    block
end

bo = excute_block_object_to_method { |param| puts "Is Block Excute? #{param}" }

bo.call("YES!")