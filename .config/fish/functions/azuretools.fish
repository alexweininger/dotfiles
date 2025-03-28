function utils
    if test (count $argv) -eq 0
        # If no arguments, install latest version
        npm i @microsoft/vscode-azext-utils
    else
        # If arguments provided, pass them as version specifier
        npm i "@microsoft/vscode-azext-utils@$argv[1]"
    end
end

function auth
    if test (count $argv) -eq 0
        # If no arguments, install latest version
        npm i @microsoft/vscode-azext-azureauth
    else
        # If arguments provided, pass them as version specifier
        npm i "@microsoft/vscode-azext-azureauth@$argv[1]"
    end
end

function azureutils
    if test (count $argv) -eq 0
        # If no arguments, install latest version
        npm i @microsoft/vscode-azext-azureutils
    else
        # If arguments provided, pass them as version specifier
        npm i "@microsoft/vscode-azext-azureutils@$argv[1]"
    end
end