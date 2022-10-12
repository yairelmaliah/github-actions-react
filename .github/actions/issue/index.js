const core = require("@actions/core");
const github = require("@actions/github");

try {
  const token = core.getInput("token");
  const title = core.getInput("title");
  const body = core.getInput("body");
  const assignees = core.getInput("assignees");

  const octokit = github.getOctokit(token);

  const response = await octokit.rest.issues.create({
    ...context.repo,
    title: "New issue!",
    body: "Hello Universe!",
    assignees: assignees ? assignees.split("\n") : undefined
  });

  core.setOutput("issue", JSON.stringify(response.data));
} catch (error) {
  core.setFailed(error.message);
}
