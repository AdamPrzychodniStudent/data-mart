# Hello and Welcome! 😊

This is my university portfolio project Build Data Mart in SQL (DLBDSPBDM01) focused on creating a database for Airbnb.  

## Instruction 🐳

Here are the steps to connect to a database. If you have any questions, feel free to ask for help!

0. **Run Gitpod:** Open Gitpod and run workspace with that repo 

1. **Open Port 5050:** Start by opening your browser and go to port 5050.

2. **Login to pgAdmin4:** Use the following credentials:

    - Email: admin@admin.com
    - Password: root

3. **Return to Gitpod:** Once logged in, switch back to Gitpod and open a new terminal.

4. **List Docker Containers:** Enter the command 
    ```
    docker container ls 
    ```
    to see all your docker containers.

5. **Identify Your Container:** Find the CONTAINER ID for the postgres container and copy it.

6. **Inspect Container:** Then in the terminal, type 
    ```
    docker inspect [Container ID],
    ``` 
    replacing [Container ID] with the actual ID you noted.

7. **Copy the IP Address:** From the output of the inspect command, locate and copy the IP address.

8. **Add New Server in pgAdmin 4:** Back in pgAdmin 4, click on 'Add New Server'. You can name the server as you like.

9. **Establish Connection:** In the Connection tab, enter the IP address in the 'Host name/address' field.

10. **Set Username and Password:** Change the username and password to both 'root'.

11. **Save and Start Exploring:** Click save. You can now start exploring your database.
