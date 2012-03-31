DESCRIPTION

Etach is an Emacs add-on that allows easy management of MIME email
attachments in RMAIL and Mail modes.  Attachments and detachments are
as simple as entering the Emacs commands M-x attach and M-x detach,
respectively.  Also provided is the ability to forward mail via
message/rfc822 format (M-x mime-forward), useful when forwarding
messages that contain MIME attachments.  Installation requires adding
just a single line to the system or user startup file; see the file
INSTALL.txt for details.  No special system capabilities or other
special packages are required -- just a working recent version of
Emacs.

The best way to see the capabilities of etach is to play around with
it.  Start by reading the files INSTALL.txt and INSTALL-TEST.txt, then
send yourself some test emails with attachments, then detach them.
But please be sure to back up your real email files first; because
etach can modify your email files, it is possible for etach to cause
trouble.  Please make backups before you do anything with etach, and
backup your files frequently until you are comfortable that it works
for you (and keep backing up your files long thereafter!).

LICENSE

Free software, GNU General Public License, no warranty.  Please see
the file LICENSE.txt for details.

NOTES AND LIMITATIONS

  NOTICE: Be sure to read FAQ.txt.  If you are using Emacs 21 and
  detach doesn't work, this goes double for you.

Etach was first released in June 2000 and should now be considered
"stable"; more precisely, versions with even minor numbers (e.g.,
1.2.x) are "stable," and versions with odd minor numbers (e.g., 1.3.x)
are "beta."  Etach has been used successfully by me for some time
under Emacs version 21 (and previously versions 20 and 19) and Debian
GNU/Linux, and is now widely used.  In any case, you should make
backups of your email files before you use etach, and continue to do
so at least until you are confident it will not mangle your RMAIL
file.  If you run into problems, please report them (see the file
FAQ.txt).

Other things you may notice (or should note) after installing etach:

- You can customize a number of things about etach by setting
  variables, including the following:

    etach-clean-decoded-plain-text
    etach-debug
    etach-detached-file-label-separator-string
    etach-detachment-default-directory
    etach-fill-decoded-plain-text
    etach-include-x-mailer
    etach-prompt-me-for-file-names
    etach-restore-attachments-after-detach
    etach-restore-buffer-after-detach
    etach-spam-host-exclude-list
    etach-spam-message
    etach-spam-message-subject-string
    etach-use-mimencode

  Set variables by using (setq ...) or (custom-set-variables ...) in
  your startup file or M-x customize-group RET etach RET or M-x
  set-variable RET within emacs.  Documentation on these "etach-"
  variables is available via C-h v etach- SPC (M-x describe-variable
  RET etach- SPC), or by reading the comments about them in the source
  file (search for occurrences of the word "defcustom" in etach.el).
  See also the file FAQ.txt.

- Take note of the MIME types, charsets, and encodings assumed by
  etach when you send mail; if they're not right or not what you want,
  please change them.  For example, although etach (as of version
  1.2.4) identifies 8-bit characters (e.g., "ä" or "ß") and will
  correctly specify the Content-Transfer-Encoding as 8bit, you should
  show you are a good mail citizen by (1) converting any 8-bit text to
  7-bit (by, for example, running etach-quoted-printable-encode-region
  on your 8-bit text before you add attachments), and (2) making
  necessary manual edits to the 7bit or 8bit encoding labels (by, for
  example, changing "8bit" to "quoted-printable"), depending on the
  changes you make.

- Etach does some sanitation on received attachment file names, partly
  for security and partly for convenience; for example, spaces and
  special characters are replaced by underscores, and leading dots
  (periods) are ignored.  If the file name exists, etach appends a
  sequence of characters to the name (before the extension) to try to
  make it unique.  If no file name is provided by the sender, etach
  makes one up (based in part on the sender's name and/or the date
  and, if possible, an appropriate extension).  (You can have etach
  prompt you for confirmation of each detached file name by setting
  the variable etach-prompt-me-for-file-names to t.  In this case you
  can also cancel individual detachments within a message by typing
  C-g (control-g, i.e., the Ctrl key together with the g key, which
  invokes the Emacs command keyboard-quit) when prompted for a file
  name.)

- If you have a mail-reading or mail-writing configuration that is
  somewhat unusual, or that is far from "vanilla" Emacs RMAIL and Mail
  modes, you should be particularly cautious when testing and then
  using etach (but please let me know if you think something is
  wrong).

- Plain text MIME parts with no associated file name will be left in
  place rather than detached to a file.  Also, etach can "fill" any
  regions of plain text after base64-decoding or
  quoted-printable-decoding them, and convert any control-M characters
  (they look like ^M) to newlines.  (You can set this behavior by
  setting the variables etach-fill-decoded-plain-text and
  etach-clean-decoded-plain-text to t.)

- Detached files will be placed into a subdirectory of the current
  directory.  The subdirectory is called "detached" and will be
  created if it doesn't exist (assuming you have write permission).
  You can change the detachment directory by setting the variable
  etach-detachment-default-directory to a string containing your
  preferred directory.

- The "forwarded" attribute (label) is set on the current RMAIL
  message as soon as you use M-x mime-forward.  If you cancel the
  message before sending, you'll need to use kill-label (k) within
  RMAIL to remove the label from the message (if you care).

- Etach can help you deal with spam (unsolicited email).  To try it,
  use C-u M-x mime-forward when viewing a piece of spam in RMAIL.  The
  behavior is customizable (in fact, you definitely should customize
  it!) via the "etach-spam-" variables.  When you use this feature, be
  certain to pare the presented "To:" list down to the minimum
  necessary before sending your message.  See also the file FAQ.txt.

- You can easily add menu items for etach, to use your mouse for
  attaching, detaching, forwarding, etc.  Please see FAQ.txt.

ACKNOWLEDGMENTS

Thank you to all who have contacted me with comments and suggestions,
suffered through bugs, and/or sent bug reports.  The following people
have been particularly honorable and noteworthy:

  Boris Aronov
  Markus Ast
  David J. Biesack
  Andrew M. Bishop
  Francis Bond
  Wolfram Gloger
  Michelangelo Grigni
  Bryan Henderson
  Jason Kantz
  Roland Kaufmann
  Wolfgang Polak
  Florian v. Savigny
  Peter Simons
  Edward Welbourne
  Art Werschulz
  Ralph Wittmann

BUGS AND COMMENTS

Please send comments, bug reports, suggestions, and requests to
receive announcements of new etach versions to etach@rulnick.com.
Include the word "etach" somewhere in the "Subject:" line of any
message sent to this address or your message may be discarded by the
mail filter.  See also the file FAQ.txt.

Thank you.  I hope you find etach useful.

John

P.S. Please do not publicize my email address directly on any Web page
or other publicly accessible resource, as spam then renders the
address unusable.  Thank you.
