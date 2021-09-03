# Colab VSCode
Remotely access to Colab in VSCode

## Steps to connect Colab in VSCode

1. Run vscolab.ipynb in colab. It starts an ssh server. The ssh server name is as hightlighted.

    <p style="text-align: center"><image src="resources/ssh-server.PNG"></p>

2. Open VSCode and Install "Remote - SSH" extension.

    <p style="text-align: center"><image src="resources/remote-ssh-ext.PNG"></p>

3. Use "Ctrl+Shft+P" to start VSCode cmd, and type "remote-ssh: connect to host"

    <p style="text-align: center"><image src="resources/VS-connect.PNG"></p>

    Type in ssh server copied from notebook

    <p style="text-align: center"><image src="resources/type-ssh-server.PNG"></p>

    Select `Linux` when asking for host type

    <p style="text-align: center"><image src="resources/VS-connect2.PNG"></p>

    Then select `Continue`, and type in password `vs` to finish connection

## Setup VSCode Extensions

Clone this repository 
    
`git clone https://github.com/colingwuyu/colab_vscode.git`


* For the first time connection, run `code-ext.sh`:

    ```bash
    chmod u+x code-ext.sh
    ./code-ext.sh
    ```

    VSCode extensions will be installed and copied to the mounted Google Drive - *MyDrive/vscode/extensions* folder

* For the connections afterwards, run `ln-ext.sh`:

    ```bash
    chmod u+x ln-ext.sh
    ./ln-ext.sh
    ```

    It creates a symbolic link to Google drive for VSCode's extensions folder 

Reload VSCode window to activate extensions