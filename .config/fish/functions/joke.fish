function joke -d 'Print a random joke'
    echo
    set joke (curl -sSH "Accept: text/plain" https://icanhazdadjoke.com/)
    echo (set_color 9effff) $joke
    echo
end