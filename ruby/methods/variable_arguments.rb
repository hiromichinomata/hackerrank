def full_name(first, *rest)
    rest.unshift(first).join(' ')
end
