# MacApps Audit

A tool that searches r/macapps for mentions of an app and collects all the data a mod needs to evaluate astroturfing.

## How to use

1. Double-click **MacApps Audit.command**
2. Type the app name when prompted
3. A CSV file appears in this folder
4. Upload the CSV to an AI (ChatGPT, Claude, etc.) along with the prompt below

First time? macOS may block it. Go to **System Settings > Privacy & Security** and click **Allow**.

## What it does

1. Searches r/macapps for every comment and post mentioning the app name
2. Looks up each user's profile to see if they mention the app in other subreddits too
3. Saves everything to one CSV with full comment text, URLs, dates, and usernames

## Output

One CSV file: **AppName-Evaluation.csv**

Every mention found — username, full comment text, direct URL, date, which subreddit, and whether it was found via cross-subreddit history check.

## Analyzing the results

Copy the prompt below and paste it into ChatGPT, Claude, or any AI. Then attach/upload the CSV file.

---

### Prompt (copy everything below this line)

```
You are an experienced Reddit community analyst helping moderators of r/macapps detect astroturfing and coordinated promotion. I'm uploading a CSV file containing every mention of a specific app found in r/macapps and other subreddits.

The CSV columns are: username, profile_url, subreddit, thread_title, comment_url, comment_date_text, within_last_year, comment_text, source_type, notes. If the "notes" column says "Cross-subreddit mention," it means the mention was found by checking a user's posting history beyond r/macapps.

Analyze the CSV and produce a report with these sections:

**1. Overview**
What app is being analyzed, how many mentions, how many unique users, how many subreddits, and the date range.

**2. Key Findings**
The most important patterns, as a bulleted list. Each finding must include a specific URL and a short quote from the data. Look for:
- Same user recommending the app across many subreddits
- Suspiciously similar wording between different users
- Accounts that only exist to promote this app
- Clusters of mentions around the same dates
- Signs of undisclosed developer or affiliate connections

**3. User-by-User Assessment**
A table sorted from highest risk to lowest:

| Username | Risk Level | Mentions | Subreddits | Summary | Key Evidence |
|----------|-----------|----------|------------|---------|-------------|

Risk levels: Low (genuine user), Medium (some patterns but not conclusive), High (strong indicators of promotion).

**4. Giveaway and Promo Thread Notes**
List any mentions from giveaway or promotional threads. These get less weight — praise in exchange for free stuff is not reliable signal.

**5. Overall Verdict**
Choose one: Organic / Likely Organic / Inconclusive / Suspicious / Likely Astroturfed. Explain in 2-4 sentences.

**6. Recommended Actions**
Zero to three concrete next steps (e.g., "No action needed," "Ask User X about their affiliation," "Monitor these accounts").

Important rules:
- Transparent developer participation (e.g., "I built this") is normal and acceptable. Only flag it if they're hiding the connection.
- Discount giveaway-thread praise — incentives distort the signal.
- Cite specific URLs and quote comment text for every claim.
- If the dataset has fewer than 10 mentions, note that small samples make detection unreliable.
- Be fair. People genuinely recommend apps they like. Look for combinations of signals, not any single one.
- Use plain language. The audience is volunteer moderators, not data scientists.
```

---

## Limitations

- Only finds what Reddit's search returns (not every comment ever made)
- Can't access private or suspended user profiles
- AI analysis is a starting point — verify flagged evidence by clicking the URLs before taking action
