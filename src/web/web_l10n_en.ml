(**************************************************************************)
(*                                BELENIOS                                *)
(*                                                                        *)
(*  Copyright © 2012-2016 Inria                                           *)
(*                                                                        *)
(*  This program is free software: you can redistribute it and/or modify  *)
(*  it under the terms of the GNU Affero General Public License as        *)
(*  published by the Free Software Foundation, either version 3 of the    *)
(*  License, or (at your option) any later version, with the additional   *)
(*  exemption that compiling, linking, and/or using OpenSSL is allowed.   *)
(*                                                                        *)
(*  This program is distributed in the hope that it will be useful, but   *)
(*  WITHOUT ANY WARRANTY; without even the implied warranty of            *)
(*  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU     *)
(*  Affero General Public License for more details.                       *)
(*                                                                        *)
(*  You should have received a copy of the GNU Affero General Public      *)
(*  License along with this program.  If not, see                         *)
(*  <http://www.gnu.org/licenses/>.                                       *)
(**************************************************************************)

let lang = "en"
let start = "Start"
let or_ = "or"
let submit_a_raw_ballot = "submit a raw ballot"
let see_accepted_ballots = "See accepted ballots"
let belenios_booth = "Belenios Booth"
let here = "here"
let question_header = "Question #%d of %d — select between %d and %d answer(s)"
let at_least = "You must select at least %d answer(s)"
let at_most = "You must select at most %d answer(s)"
let previous = "Previous"
let next = "Next"
let nothing = "(nothing)"
let enter_cred = "Please enter your credential:"
let invalid_cred = "Invalid credential!"
let input_credential = "Input credential"
let answer_to_questions = "Answer to questions"
let review_and_encrypt = "Review and encrypt"
let authenticate = "Authenticate"
let confirm = "Confirm"
let done_ = "Done"
let booth_step1 = "Step 1/6: Input your credential"
let booth_step2 = "Step 2/6: Answer to questions"
let booth_step3 = "Step 3/6: Review and encrypt"
let booth_step5 = "Step 5/6: Confirm"
let booth_step6 = "Step 6/6: "
let input_your_credential = "Input your credential "
let wait_while_encrypted = "Please wait while your ballot is being encrypted..."
let encrypting = "Encrypting..."
let restart = "Restart"
let successfully_encrypted = "Your ballot has been successfully encrypted, "
let not_cast_yet = "but has not been cast yet"
let qmark = "!"
let your_tracker_is = "Your smart ballot tracker is "
let we_invite_you_to_save_it = "We invite you to save it in order to check later that it is taken into account."
let continue = "Continue"
let election_uuid = "Election UUID: "
let election_fingerprint = "Election fingerprint: "
let i_am = "I am "
let and_ = " and "
let i_cast_my_vote = "I cast my vote"
let please_login_to_confirm = "Please log in to confirm your vote."
let your_ballot_for = "Your ballot for "
let has_been_received = " has been received, but not recorded yet. "
let nobody_can_see = "Note: your ballot is encrypted and nobody can see its contents."
let go_back_to_election = "Go back to election"
let has_been_accepted = " has been accepted."
let you_can_check_its_presence = "You can check its presence in the "
let ballot_box = "ballot box"
let anytime_during_the_election = " anytime during the election."
let confirmation_email = " A confirmation e-mail has been sent to you."
let thank_you_for_voting = "Thank you for voting!"
let is_rejected_because = " is rejected, because "
let fail = "FAIL!"
let logout_and_come_back = "Log out and come back to election page"
let administer_elections = "Administer elections"
let administer_this_election = "Administer this election"
let powered_by = "Powered by "
let get_the_source_code = "Get the source code"
let audit_data = "Audit data: "
let parameters = "parameters"
let public_credentials = "public credentials"
let trustee_public_keys = "trustee public keys"
let ballots = "ballots"
let election_server = "Election server"
let accepted_ballots = "Accepted ballots"
let ballots_have_been_accepted_so_far = " ballot(s) have been accepted so far."
let ballots_have_been_accepted = " ballot(s) have been accepted."
let ballots_have_been_accepted_and = " ballot(s) have been accepted, and "
let have_been_tallied = " have been tallied."
let username = "Username:"
let password = "Password:"
let login = "Login"
let password_login = "Password login"
let you_must_accept_cookies = "To use this site, you must accept cookies. "
let accept = "Accept"
let not_yet_open = "Sorry, this election is not yet open"
let come_back_later = "This election does not exist yet. Please come back later."
let cookies_are_blocked = "Cookies are blocked"
let please_enable_them = "Your browser seems to block cookies. Please enable them."
let blank_vote = "Blank vote"
let no_other_blank = "No other choices are allowed when voting blank"


let mail_password_subject : ('a, 'b, 'c, 'd, 'e, 'f) format6 =
  "Your password for election %s"

let mail_password : ('a, 'b, 'c, 'd, 'e, 'f) format6 =
  "You are listed as a voter for the election

  %s

You will find below your login and password.  To cast a vote, you will
also need a credential, sent in a separate email.  Be careful,
passwords and credentials look similar but play different roles.  You
will be asked to enter your credential before entering the voting
booth.  Login and passwords are required once your ballot is ready to
be cast.

Username: %s
Password: %s
Page of the election: %s

Note that you are allowed to vote several times.  Only the last vote
counts."


let mail_credential_subject : ('a, 'b, 'c, 'd, 'e, 'f) format6 =
  "Your credential for election %s"

let mail_credential : ('a, 'b, 'c, 'd, 'e, 'f) format6 =
  "You are listed as a voter for the election

  %s

You will find below your login and credential.  To cast a vote, you will
also need a password, sent in a separate email.  Be careful,
passwords and credentials look similar but play different roles.  You
will be asked to enter your credential before entering the voting
booth.  Login and passwords are required once your ballot is ready to
be cast.

Username: %s
Credential: %s
Page of the election: %s

Note that you are allowed to vote several times.  Only the last vote
counts."


let mail_confirmation_subject : ('a, 'b, 'c, 'd, 'e, 'f) format6 =
  "Your vote for election %s"

let mail_confirmation : ('a, 'b, 'c, 'd, 'e, 'f) format6 =
  "Dear %s,

Your vote for election

  %s

has been recorded. Your smart ballot tracker is

  %s

You can check its presence in the ballot box, accessible at

  %s

Results will be published on the election page

  %s

-- \nBelenios"
