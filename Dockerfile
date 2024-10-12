# Step 1: Use an official Node.js runtime as a parent image
FROM node:18

# Step 2: Set the working directory in the container
WORKDIR /usr/src/app

# Step 3: Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Step 4: Install dependencies
RUN npm install

# Step 5: Copy the rest of your application files into the container
COPY . .

# Step 6: Expose port 3000 (or whatever port your app uses)
EXPOSE 3000

# Step 7: Start the app
CMD ["node", "index.js"]
