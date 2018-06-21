(**************************************************************************)
(*                                BELENIOS                                *)
(*                                                                        *)
(*  Copyright © 2012-2018 Inria                                           *)
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

open Serializable_t
open Web_serializable_t
open Signatures

val admin_gdpr : unit -> [> `Html ] Eliom_content.Html5.F.elt Lwt.t
val admin : elections:((uuid * string) list * (uuid * string) list * (uuid * string) list * (uuid * string) list) option -> unit -> [> `Html ] Eliom_content.Html5.F.elt Lwt.t

val new_election_failure : [ `Exists | `Exception of exn ] -> unit -> [> `Html ] Eliom_content.Html5.F.elt Lwt.t

val generic_page : title:string ->
  ?service:(unit, unit, [< Eliom_service.get_service_kind ],
           [< Eliom_service.attached ],
           [< Eliom_service.service_kind ], [< Eliom_service.suff ],
           'a, unit, [< Eliom_service.registrable ],
           [< Eliom_service.non_ocaml_service ])
    Eliom_service.service ->
  string -> unit -> [> `Html ] Eliom_content.Html5.F.elt Lwt.t

val election_draft_pre : unit -> [> `Html ] Eliom_content.Html5.F.elt Lwt.t
val election_draft : uuid -> draft_election -> unit -> [> `Html ] Eliom_content.Html5.F.elt Lwt.t
val election_draft_voters : uuid -> draft_election -> int -> unit -> [> `Html ] Eliom_content.Html5.F.elt Lwt.t
val election_draft_questions : uuid -> draft_election -> unit -> [> `Html ] Eliom_content.Html5.F.elt Lwt.t
val election_draft_credential_authority : uuid -> draft_election -> unit -> [> `Html ] Eliom_content.Html5.F.elt Lwt.t
val election_draft_credentials : string -> uuid -> draft_election -> unit -> [> `Html ] Eliom_content.Html5.F.elt Lwt.t
val election_draft_trustees : uuid -> draft_election -> unit -> [> `Html ] Eliom_content.Html5.F.elt Lwt.t
val election_draft_threshold_trustees : uuid -> draft_election -> unit -> [> `Html ] Eliom_content.Html5.F.elt Lwt.t
val election_draft_trustee : string -> uuid -> draft_election -> unit -> [> `Html ] Eliom_content.Html5.F.elt Lwt.t
val election_draft_threshold_trustee : string -> uuid -> draft_election -> unit -> [> `Html ] Eliom_content.Html5.F.elt Lwt.t
val election_draft_import : uuid -> draft_election -> (uuid * string) list * (uuid * string) list * (uuid * string) list -> unit -> [> `Html ] Eliom_content.Html5.F.elt Lwt.t
val election_draft_import_trustees : uuid -> draft_election -> (uuid * string) list * (uuid * string) list * (uuid * string) list -> unit -> [> `Html ] Eliom_content.Html5.F.elt Lwt.t
val election_draft_confirm : uuid -> draft_election -> unit -> [> `Html ] Eliom_content.Html5.F.elt Lwt.t

val election_home : 'a election -> election_state -> unit -> [> `Html ] Eliom_content.Html5.F.elt Lwt.t
val election_admin : 'a election -> Web_serializable_j.metadata -> election_state -> (unit -> string list Lwt.t) -> unit -> [> `Html ] Eliom_content.Html5.F.elt Lwt.t
val update_credential : 'a election -> unit -> [> `Html ] Eliom_content.Html5.F.elt Lwt.t
val regenpwd : uuid -> unit -> [> `Html ] Eliom_content.Html5.F.elt Lwt.t
val cast_raw : 'a election -> unit -> [> `Html ] Eliom_content.Html5.F.elt Lwt.t
val cast_confirmation : 'a election -> string -> unit -> [> `Html ] Eliom_content.Html5.F.elt Lwt.t
val cast_confirmed : 'a election -> result:[< `Error of Web_common.error | `Valid of string ] -> unit -> [> `Html ] Eliom_content.Html5.F.elt Lwt.t
val pretty_ballots : 'a election -> string list -> Yojson.Safe.json result option -> unit -> [> `Html ] Eliom_content.Html5.F.elt Lwt.t
val pretty_records : 'a election -> (string * string) list -> unit -> [> `Html ] Eliom_content.Html5.F.elt Lwt.t

val tally_trustees : 'a election -> int -> string -> unit -> [> `Html ] Eliom_content.Html5.F.elt Lwt.t

val already_logged_in :
  unit -> [> `Html ] Eliom_content.Html5.F.elt Lwt.t

val login_choose :
  string list ->
  (string -> (unit, unit, [< Eliom_service.get_service_kind ],
             [< Eliom_service.attached ], [< Eliom_service.service_kind ],
             [< Eliom_service.suff ], 'a, unit,
             [< Eliom_service.registrable ],
             [< Eliom_service.non_ocaml_service ])
            Eliom_service.service) ->
  unit -> [> `Html ] Eliom_content.Html5.F.elt Lwt.t

val login_dummy : unit -> [> `Html ] Eliom_content.Html5.F.elt Lwt.t
val login_password : unit -> [> `Html ] Eliom_content.Html5.F.elt Lwt.t

val booth : unit -> [> `Html ] Eliom_content.Html5.F.elt Lwt.t

val contact_footer : metadata -> string -> string
