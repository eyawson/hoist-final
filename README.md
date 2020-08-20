# Hoist Lab!

## Let's set the scenario...

It's April 2020. You've been on lockdown for a little more than 2 weeks. Everyone thought this was temporary, but it looks like we'll be locked down much longer. You work for a medium sized ed-tech software company called Hoist, where you're "Raising the bar on education". Due to the quarantines, the company is pivoting a bit and throwing some resources at a few new internal projects. You're responsible for getting them up an running. 

## Requirements

This new team is very proficient at developing software, but they kind of suck at the rest of it. Lets use Terraform to help them out and configure the following resources.

### AWS Users 🤼

First up we'll need to ensure there are IAM users created for each developer. No need to worry about Roles or Policies right now as we're not sure which directions these projects will take yet. Just create a user with the format: firstname.lastname

### Github 👩🏾‍💻

#### TODO

Obviously we need to include some version control. No one will have access to be able to create repos in the org, so we'll need a way to do it programmatically. Set up the following Github repos:

- hydra

- drago

- Daenerys

These repos are top secret so keep them private. More repos may be coming down the pipeline. 

After the repos are ready, we'll grab the engineers github handles and they will need to be added to our new GitHub Organization, hoist-education.

### Development Servers 📥

Each engineer that joins this team needs its own development server for you know.....development. Ensure a server is configured for every dev that joins the team. Although we love ubuntu, we'll need to provision RedHat servers as certain software they need only works there. Ensure these servers have a public ip address and make sure to use our development key for ssh. The keyname is hoist_dev

### Old Data 💾

#### TODO

There has been a mysql database created in the new AWS account in RDS. It houses data that will be used in the development of these new application. It was provisioned manually so it's management needs to be brought under the umbrella of Terraform....do ya thing boss.