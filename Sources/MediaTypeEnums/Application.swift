import Foundation

public extension MediaTypeEnum {
  enum Application {
    case A2L
    case AML
    case ATF
    case ATFX
    case ATXML
    case CALS1840
    case CDFX
    case CEA
    case CSTAdata
    case DCD
    case DII
    case DIT
    case EDIConsent
    case EDIFACT
    case EDIX12
    case H224
    case IOTP
    case ISUP
    case LXF
    case MF4
    case ODA
    case ODX
    case PDX
    case QSIG
    case SGML
    case TETRA_ISI
    case _1dInterleavedParityfec
    case _3gpdashQoeReport
    case _3gppHal
    case _3gppHalForms
    case _3gppIms
    case ace
    case activemessage
    case activity
    case altoCostmap
    case altoCostmapfilter
    case altoDirectory
    case altoEndpointprop
    case altoEndpointpropparams
    case altoEndpointcost
    case altoEndpointcostparams
    case altoError
    case altoNetworkmapfilter
    case altoNetworkmap
    case altoUpdatestreamcontrol
    case altoUpdatestreamparams
    case andrewInset
    case applefile
    case at
    case atom
    case atomcat
    case atomdeleted
    case atomicmail
    case atomsvc
    case atscDwd
    case atscDynamicEventMessage
    case atscHeld
    case atscRdt
    case atscRsat
    case authPolicy
    case bacnetXdd
    case batchSMTP
    case beep
    case calendar
    case callCompletion
    case captive
    case cbor
    case cborSeq
    case cccex
    case ccmp
    case ccxml
    case cdmiCapability
    case cdmiContainer
    case cdmiDomain
    case cdmiObject
    case cdmiQueue
    case cdni
    case cea2018
    case cellml
    case cfw
    case clr
    case clue_info
    case clue
    case cms
    case cnrp
    case coapGroup
    case coapPayload
    case commonground
    case conferenceInfo
    case cpl
    case cose
    case coseKey
    case coseKeySet
    case csrattrs
    case csta
    case csvm
    case cwt
    case cybercash
    case dash
    case dashdelta
    case davmount
    case dcaRft
    case decDx
    case dialogInfo
    case dicom
    case dns
    case dnsMessage
    case dots
    case dskpp
    case dssc
    case dvcs
    case ecmascript
    case efi
    case elm
    case emma
    case emotionml
    case encaprtp
    case epp
    case epub
    case eshop
    case example
    case exi
    case expectCtReport
    case express
    case fastinfoset
    case fastsoap
    case fdt
    case fhir
    case fits
    case flexfec
    case fontSfnt
    case fontTdpfr
    case fontWoff
    case frameworkAttributes
    case geo
    case geopackage
    case geoxacml
    case gltfBuffer
    case gml
    case gzip
    case held
    case http
    case hyperstudio
    case ibeKeyRequest
    case ibePkgReply
    case ibePpData
    case iges
    case imIscomposing
    case index
    case inkml
    case ipfix
    case ipp
    case its
    case javascript
    case jf2feed
    case jose
    case jrd
    case jscalendar
    case json
    case jsonPatch
    case jsonSeq
    case jwk
    case jwkSet
    case jwt
    case kpmlRequest
    case kpmlResponse
    case ld
    case lgr
    case linkFormat
    case loadControl
    case lost
    case lostsync
    case lpf
    case macBinhex40
    case macwriteii
    case mads
    case manifest
    case marc
    case marcxml
    case mathematica
    case mathml
    case mathmlContent
    case mathmlPresentation
    case mbmsAssociatedProcedureDescription
    case mbmsDeregister
    case mbmsEnvelope
    case mbmsMskResponse
    case mbmsMsk
    case mbmsProtectionDescription
    case mbmsReceptionReport
    case mbmsRegisterResponse
    case mbmsRegister
    case mbmsSchedule
    case mbmsUserServiceDescription
    case mbox
    case media_control
    case mediaPolicyDataset
    case mediaservercontrol
    case mergePatch
    case metalink4
    case mets
    case mikey
    case mipc
    case missingBlocks
    case mmtAei
    case mmtUsd
    case mods
    case mossKeys
    case mossSignature
    case mosskeyData
    case mosskeyRequest
    case mp21
    case mp4
    case mpeg4Generic
    case mpeg4Iod
    case mpeg4IodXmt
    case mrbConsumer
    case mrbPublish
    case mscIvr
    case mscMixer
    case msword
    case mud
    case multipartCore
    case mxf
    case nQuads
    case nTriples
    case nasdata
    case newsCheckgroups
    case newsGroupinfo
    case newsTransmission
    case nlsml
    case node
    case nss
    case oauthAuthzReq
    case ocspRequest
    case ocspResponse
    case octetStream
    case odm
    case oebpsPackage
    case ogg
    case opcNodeset
    case oscore
    case oxps
    case p21
    case p2pOverlay
    case parityfec
    case passport
    case patchOpsError
    case pdf
    case pemCertificateChain
    case pgpEncrypted
    case pgpKeys
    case pgpSignature
    case pidfDiff
    case pidf
    case pkcs10
    case pkcs7Mime
    case pkcs7Signature
    case pkcs8
    case pkcs8Encrypted
    case pkcs12
    case pkixAttrCert
    case pkixCert
    case pkixCrl
    case pkixPkipath
    case pkixcmp
    case pls
    case pocSettings
    case postscript
    case ppspTracker
    case problem
    case provenance
    case pskc
    case pvd
    case rdf
    case routeApd
    case routeSTsid
    case routeUsd
    case raptorfec
    case rdap
    case reginfo
    case relaxNgCompactSyntax
    case remotePrinting
    case reputon
    case resourceListsDiff
    case resourceLists
    case rfc
    case riscos
    case rlmi
    case rlsServices
    case rpkiGhostbusters
    case rpkiManifest
    case rpkiPublication
    case rpkiRoa
    case rpkiUpdown
    case rtf
    case rtploopback
    case rtx
    case samlassertion
    case samlmetadata
    case sarifExternalProperties
    case sarif
    case sbe
    case sbml
    case scaip
    case scim
    case scvpCvRequest
    case scvpCvResponse
    case scvpVpRequest
    case scvpVpResponse
    case sdp
    case secevent
    case senmlEtch
    case senmlExi
    case senml
    case sensmlExi
    case sensml
    case sepExi
    case sep
    case sessionInfo
    case setPayment
    case setPaymentInitiation
    case setRegistration
    case setRegistrationInitiation
    case sgmlOpenCatalog
    case shf
    case sieve
    case simpleFilter
    case simpleMessageSummary
    case simpleSymbolContainer
    case sipc
    case slate
    case smil
    case smpte336m
    case soap
    case sparqlQuery
    case sparqlResults
    case spiritsEvent
    case sql
    case srgs
    case sru
    case ssml
    case stix
    case swid
    case tampApexUpdate
    case tampApexUpdateConfirm
    case tampCommunityUpdate
    case tampCommunityUpdateConfirm
    case tampError
    case tampSequenceAdjust
    case tampSequenceAdjustConfirm
    case tampStatusQuery
    case tampStatusResponse
    case tampUpdate
    case tampUpdateConfirm
    case taxii
    case td
    case tei
    case thraud
    case timestampQuery
    case timestampReply
    case timestampedData
    case tlsrpt
    case tnauthlist
    case tokenIntrospection
    case trickleIceSdpfrag
    case trig
    case ttml
    case tveTrigger
    case tzif
    case tzifLeap
    case ulpfec
    case urcGrpsheet
    case urcRessheet
    case urcTargetdesc
    case urcUisocketdesc
    case vcard
    case vemmi
    case voicexml
    case voucherCms
    case vqRtcpxr
    case wasm
    case watcherinfo
    case webpushOptions
    case whoisppQuery
    case whoisppResponse
    case widget
    case wita
    case wsdl
    case wspolicy
    case xPkiMessage
    case xWwwFormUrlencoded
    case xX509CaCert
    case xX509CaRaCert
    case xX509NextCaCert
    case x400Bp
    case xacml
    case xcapAtt
    case xcapCaps
    case xcapDiff
    case xcapEl
    case xcapError
    case xcapNs
    case xconConferenceInfoDiff
    case xconConferenceInfo
    case xenc
    case xhtml
    case xliff
    case xml
    case xmlDtd
    case xmlExternalParsedEntity
    case xmlPatch
    case xmpp
    case xop
    case xslt
    case xv
    case yang
    case yangData
    case yangPatch
    case yin
    case zip
    case zlib
    case zstd
    case other(String)
    case any
  }
}

extension MediaTypeEnum.Application: CustomStringConvertible {
  public var description: String { rawValue }
}

extension MediaTypeEnum.Application: ExpressibleByStringLiteral {
  public init(stringLiteral value: String) { self.init(rawValue: value) }
}

extension MediaTypeEnum.Application: RawRepresentable {
  public init(rawValue: String) {
    switch rawValue {
    case "A2L":                                   self = .A2L
    case "AML":                                   self = .AML
    case "ATF":                                   self = .ATF
    case "ATFX":                                  self = .ATFX
    case "ATXML":                                 self = .ATXML
    case "CALS-1840":                             self = .CALS1840
    case "CDFX":                                  self = .CDFX
    case "CEA":                                   self = .CEA
    case "CSTAdata":                              self = .CSTAdata
    case "DCD":                                   self = .DCD
    case "DII":                                   self = .DII
    case "DIT":                                   self = .DIT
    case "EDI-consent":                           self = .EDIConsent
    case "EDIFACT":                               self = .EDIFACT
    case "EDI-X12":                               self = .EDIX12
    case "H224":                                  self = .H224
    case "IOTP":                                  self = .IOTP
    case "ISUP":                                  self = .ISUP
    case "LXF":                                   self = .LXF
    case "MF4":                                   self = .MF4
    case "ODA":                                   self = .ODA
    case "ODX":                                   self = .ODX
    case "PDX":                                   self = .PDX
    case "QSIG":                                  self = .QSIG
    case "SGML":                                  self = .SGML
    case "TETRA_ISI":                             self = .TETRA_ISI
    case "1d-interleaved-parityfec":              self = ._1dInterleavedParityfec
    case "3gpdash-qoe-report":                    self = ._3gpdashQoeReport
    case "3gppHal":                               self = ._3gppHal
    case "3gppHalForms":                          self = ._3gppHalForms
    case "3gpp-ims":                              self = ._3gppIms
    case "ace":                                   self = .ace
    case "activemessage":                         self = .activemessage
    case "activity":                              self = .activity
    case "alto-costmap":                          self = .altoCostmap
    case "alto-costmapfilter":                    self = .altoCostmapfilter
    case "alto-directory":                        self = .altoDirectory
    case "alto-endpointprop":                     self = .altoEndpointprop
    case "alto-endpointpropparams":               self = .altoEndpointpropparams
    case "alto-endpointcost":                     self = .altoEndpointcost
    case "alto-endpointcostparams":               self = .altoEndpointcostparams
    case "alto-error":                            self = .altoError
    case "alto-networkmapfilter":                 self = .altoNetworkmapfilter
    case "alto-networkmap":                       self = .altoNetworkmap
    case "alto-updatestreamcontrol":              self = .altoUpdatestreamcontrol
    case "alto-updatestreamparams":               self = .altoUpdatestreamparams
    case "andrew-inset":                          self = .andrewInset
    case "applefile":                             self = .applefile
    case "at":                                    self = .at
    case "atom":                                  self = .atom
    case "atomcat":                               self = .atomcat
    case "atomdeleted":                           self = .atomdeleted
    case "atomicmail":                            self = .atomicmail
    case "atomsvc":                               self = .atomsvc
    case "atsc-dwd":                              self = .atscDwd
    case "atsc-dynamic-event-message":            self = .atscDynamicEventMessage
    case "atsc-held":                             self = .atscHeld
    case "atsc-rdt":                              self = .atscRdt
    case "atsc-rsat":                             self = .atscRsat
    case "auth-policy":                           self = .authPolicy
    case "bacnet-xdd":                            self = .bacnetXdd
    case "batch-SMTP":                            self = .batchSMTP
    case "beep":                                  self = .beep
    case "calendar":                              self = .calendar
    case "call-completion":                       self = .callCompletion
    case "captive":                               self = .captive
    case "cbor":                                  self = .cbor
    case "cbor-seq":                              self = .cborSeq
    case "cccex":                                 self = .cccex
    case "ccmp":                                  self = .ccmp
    case "ccxml":                                 self = .ccxml
    case "cdmi-capability":                       self = .cdmiCapability
    case "cdmi-container":                        self = .cdmiContainer
    case "cdmi-domain":                           self = .cdmiDomain
    case "cdmi-object":                           self = .cdmiObject
    case "cdmi-queue":                            self = .cdmiQueue
    case "cdni":                                  self = .cdni
    case "cea-2018":                              self = .cea2018
    case "cellml":                                self = .cellml
    case "cfw":                                   self = .cfw
    case "clr":                                   self = .clr
    case "clue_info":                             self = .clue_info
    case "clue":                                  self = .clue
    case "cms":                                   self = .cms
    case "cnrp":                                  self = .cnrp
    case "coap-group":                            self = .coapGroup
    case "coap-payload":                          self = .coapPayload
    case "commonground":                          self = .commonground
    case "conference-info":                       self = .conferenceInfo
    case "cpl":                                   self = .cpl
    case "cose":                                  self = .cose
    case "cose-key":                              self = .coseKey
    case "cose-key-set":                          self = .coseKeySet
    case "csrattrs":                              self = .csrattrs
    case "csta":                                  self = .csta
    case "csvm":                                  self = .csvm
    case "cwt":                                   self = .cwt
    case "cybercash":                             self = .cybercash
    case "dash":                                  self = .dash
    case "dashdelta":                             self = .dashdelta
    case "davmount":                              self = .davmount
    case "dca-rft":                               self = .dcaRft
    case "dec-dx":                                self = .decDx
    case "dialog-info":                           self = .dialogInfo
    case "dicom":                                 self = .dicom
    case "dns":                                   self = .dns
    case "dns-message":                           self = .dnsMessage
    case "dots":                                  self = .dots
    case "dskpp":                                 self = .dskpp
    case "dssc":                                  self = .dssc
    case "dvcs":                                  self = .dvcs
    case "ecmascript":                            self = .ecmascript
    case "efi":                                   self = .efi
    case "elm":                                   self = .elm
    case "emma":                                  self = .emma
    case "emotionml":                             self = .emotionml
    case "encaprtp":                              self = .encaprtp
    case "epp":                                   self = .epp
    case "epub":                                  self = .epub
    case "eshop":                                 self = .eshop
    case "example":                               self = .example
    case "exi":                                   self = .exi
    case "expect-ct-report":                      self = .expectCtReport
    case "express":                               self = .express
    case "fastinfoset":                           self = .fastinfoset
    case "fastsoap":                              self = .fastsoap
    case "fdt":                                   self = .fdt
    case "fhir":                                  self = .fhir
    case "fits":                                  self = .fits
    case "flexfec":                               self = .flexfec
    case "font-sfnt":                             self = .fontSfnt
    case "font-tdpfr":                            self = .fontTdpfr
    case "font-woff":                             self = .fontWoff
    case "framework-attributes":                  self = .frameworkAttributes
    case "geo":                                   self = .geo
    case "geopackage":                            self = .geopackage
    case "geoxacml":                              self = .geoxacml
    case "gltf-buffer":                           self = .gltfBuffer
    case "gml":                                   self = .gml
    case "gzip":                                  self = .gzip
    case "held":                                  self = .held
    case "http":                                  self = .http
    case "hyperstudio":                           self = .hyperstudio
    case "ibe-key-request":                       self = .ibeKeyRequest
    case "ibe-pkg-reply":                         self = .ibePkgReply
    case "ibe-pp-data":                           self = .ibePpData
    case "iges":                                  self = .iges
    case "im-iscomposing":                        self = .imIscomposing
    case "index":                                 self = .index
    case "inkml":                                 self = .inkml
    case "ipfix":                                 self = .ipfix
    case "ipp":                                   self = .ipp
    case "its":                                   self = .its
    case "javascript":                            self = .javascript
    case "jf2feed":                               self = .jf2feed
    case "jose":                                  self = .jose
    case "jrd":                                   self = .jrd
    case "jscalendar":                            self = .jscalendar
    case "json":                                  self = .json
    case "json-patch":                            self = .jsonPatch
    case "json-seq":                              self = .jsonSeq
    case "jwk":                                   self = .jwk
    case "jwk-set":                               self = .jwkSet
    case "jwt":                                   self = .jwt
    case "kpml-request":                          self = .kpmlRequest
    case "kpml-response":                         self = .kpmlResponse
    case "ld":                                    self = .ld
    case "lgr":                                   self = .lgr
    case "link-format":                           self = .linkFormat
    case "load-control":                          self = .loadControl
    case "lost":                                  self = .lost
    case "lostsync":                              self = .lostsync
    case "lpf":                                   self = .lpf
    case "mac-binhex40":                          self = .macBinhex40
    case "macwriteii":                            self = .macwriteii
    case "mads":                                  self = .mads
    case "manifest":                              self = .manifest
    case "marc":                                  self = .marc
    case "marcxml":                               self = .marcxml
    case "mathematica":                           self = .mathematica
    case "mathml":                                self = .mathml
    case "mathml-content":                        self = .mathmlContent
    case "mathml-presentation":                   self = .mathmlPresentation
    case "mbms-associated-procedure-description": self = .mbmsAssociatedProcedureDescription
    case "mbms-deregister":                       self = .mbmsDeregister
    case "mbms-envelope":                         self = .mbmsEnvelope
    case "mbms-msk-response":                     self = .mbmsMskResponse
    case "mbms-msk":                              self = .mbmsMsk
    case "mbms-protection-description":           self = .mbmsProtectionDescription
    case "mbms-reception-report":                 self = .mbmsReceptionReport
    case "mbms-register-response":                self = .mbmsRegisterResponse
    case "mbms-register":                         self = .mbmsRegister
    case "mbms-schedule":                         self = .mbmsSchedule
    case "mbms-user-service-description":         self = .mbmsUserServiceDescription
    case "mbox":                                  self = .mbox
    case "media_control":                         self = .media_control
    case "media-policy-dataset":                  self = .mediaPolicyDataset
    case "mediaservercontrol":                    self = .mediaservercontrol
    case "merge-patch":                           self = .mergePatch
    case "metalink4":                             self = .metalink4
    case "mets":                                  self = .mets
    case "mikey":                                 self = .mikey
    case "mipc":                                  self = .mipc
    case "missing-blocks":                        self = .missingBlocks
    case "mmt-aei":                               self = .mmtAei
    case "mmt-usd":                               self = .mmtUsd
    case "mods":                                  self = .mods
    case "moss-keys":                             self = .mossKeys
    case "moss-signature":                        self = .mossSignature
    case "mosskey-data":                          self = .mosskeyData
    case "mosskey-request":                       self = .mosskeyRequest
    case "mp21":                                  self = .mp21
    case "mp4":                                   self = .mp4
    case "mpeg4-generic":                         self = .mpeg4Generic
    case "mpeg4-iod":                             self = .mpeg4Iod
    case "mpeg4-iod-xmt":                         self = .mpeg4IodXmt
    case "mrb-consumer":                          self = .mrbConsumer
    case "mrb-publish":                           self = .mrbPublish
    case "msc-ivr":                               self = .mscIvr
    case "msc-mixer":                             self = .mscMixer
    case "msword":                                self = .msword
    case "mud":                                   self = .mud
    case "multipart-core":                        self = .multipartCore
    case "mxf":                                   self = .mxf
    case "n-quads":                               self = .nQuads
    case "n-triples":                             self = .nTriples
    case "nasdata":                               self = .nasdata
    case "news-checkgroups":                      self = .newsCheckgroups
    case "news-groupinfo":                        self = .newsGroupinfo
    case "news-transmission":                     self = .newsTransmission
    case "nlsml":                                 self = .nlsml
    case "node":                                  self = .node
    case "nss":                                   self = .nss
    case "oauth-authz-req":                       self = .oauthAuthzReq
    case "ocsp-request":                          self = .ocspRequest
    case "ocsp-response":                         self = .ocspResponse
    case "octet-stream":                          self = .octetStream
    case "odm":                                   self = .odm
    case "oebps-package":                         self = .oebpsPackage
    case "ogg":                                   self = .ogg
    case "opc-nodeset":                           self = .opcNodeset
    case "oscore":                                self = .oscore
    case "oxps":                                  self = .oxps
    case "p21":                                   self = .p21
    case "p2p-overlay":                           self = .p2pOverlay
    case "parityfec":                             self = .parityfec
    case "passport":                              self = .passport
    case "patch-ops-error":                       self = .patchOpsError
    case "pdf":                                   self = .pdf
    case "pem-certificate-chain":                 self = .pemCertificateChain
    case "pgp-encrypted":                         self = .pgpEncrypted
    case "pgp-keys":                              self = .pgpKeys
    case "pgp-signature":                         self = .pgpSignature
    case "pidf-diff":                             self = .pidfDiff
    case "pidf":                                  self = .pidf
    case "pkcs10":                                self = .pkcs10
    case "pkcs7-mime":                            self = .pkcs7Mime
    case "pkcs7-signature":                       self = .pkcs7Signature
    case "pkcs8":                                 self = .pkcs8
    case "pkcs8-encrypted":                       self = .pkcs8Encrypted
    case "pkcs12":                                self = .pkcs12
    case "pkix-attr-cert":                        self = .pkixAttrCert
    case "pkix-cert":                             self = .pkixCert
    case "pkix-crl":                              self = .pkixCrl
    case "pkix-pkipath":                          self = .pkixPkipath
    case "pkixcmp":                               self = .pkixcmp
    case "pls":                                   self = .pls
    case "poc-settings":                          self = .pocSettings
    case "postscript":                            self = .postscript
    case "ppsp-tracker":                          self = .ppspTracker
    case "problem":                               self = .problem
    case "provenance":                            self = .provenance
    case "pskc":                                  self = .pskc
    case "pvd":                                   self = .pvd
    case "rdf":                                   self = .rdf
    case "route-apd":                             self = .routeApd
    case "route-s-tsid":                          self = .routeSTsid
    case "route-usd":                             self = .routeUsd
    case "raptorfec":                             self = .raptorfec
    case "rdap":                                  self = .rdap
    case "reginfo":                               self = .reginfo
    case "relax-ng-compact-syntax":               self = .relaxNgCompactSyntax
    case "remote-printing":                       self = .remotePrinting
    case "reputon":                               self = .reputon
    case "resource-lists-diff":                   self = .resourceListsDiff
    case "resource-lists":                        self = .resourceLists
    case "rfc":                                   self = .rfc
    case "riscos":                                self = .riscos
    case "rlmi":                                  self = .rlmi
    case "rls-services":                          self = .rlsServices
    case "rpki-ghostbusters":                     self = .rpkiGhostbusters
    case "rpki-manifest":                         self = .rpkiManifest
    case "rpki-publication":                      self = .rpkiPublication
    case "rpki-roa":                              self = .rpkiRoa
    case "rpki-updown":                           self = .rpkiUpdown
    case "rtf":                                   self = .rtf
    case "rtploopback":                           self = .rtploopback
    case "rtx":                                   self = .rtx
    case "samlassertion":                         self = .samlassertion
    case "samlmetadata":                          self = .samlmetadata
    case "sarif-external-properties":             self = .sarifExternalProperties
    case "sarif":                                 self = .sarif
    case "sbe":                                   self = .sbe
    case "sbml":                                  self = .sbml
    case "scaip":                                 self = .scaip
    case "scim":                                  self = .scim
    case "scvp-cv-request":                       self = .scvpCvRequest
    case "scvp-cv-response":                      self = .scvpCvResponse
    case "scvp-vp-request":                       self = .scvpVpRequest
    case "scvp-vp-response":                      self = .scvpVpResponse
    case "sdp":                                   self = .sdp
    case "secevent":                              self = .secevent
    case "senml-etch":                            self = .senmlEtch
    case "senml-exi":                             self = .senmlExi
    case "senml":                                 self = .senml
    case "sensml-exi":                            self = .sensmlExi
    case "sensml":                                self = .sensml
    case "sep-exi":                               self = .sepExi
    case "sep":                                   self = .sep
    case "session-info":                          self = .sessionInfo
    case "set-payment":                           self = .setPayment
    case "set-payment-initiation":                self = .setPaymentInitiation
    case "set-registration":                      self = .setRegistration
    case "set-registration-initiation":           self = .setRegistrationInitiation
    case "sgml-open-catalog":                     self = .sgmlOpenCatalog
    case "shf":                                   self = .shf
    case "sieve":                                 self = .sieve
    case "simple-filter":                         self = .simpleFilter
    case "simple-message-summary":                self = .simpleMessageSummary
    case "simpleSymbolContainer":                 self = .simpleSymbolContainer
    case "sipc":                                  self = .sipc
    case "slate":                                 self = .slate
    case "smil":                                  self = .smil
    case "smpte336m":                             self = .smpte336m
    case "soap":                                  self = .soap
    case "sparql-query":                          self = .sparqlQuery
    case "sparql-results":                        self = .sparqlResults
    case "spirits-event":                         self = .spiritsEvent
    case "sql":                                   self = .sql
    case "srgs":                                  self = .srgs
    case "sru":                                   self = .sru
    case "ssml":                                  self = .ssml
    case "stix":                                  self = .stix
    case "swid":                                  self = .swid
    case "tamp-apex-update":                      self = .tampApexUpdate
    case "tamp-apex-update-confirm":              self = .tampApexUpdateConfirm
    case "tamp-community-update":                 self = .tampCommunityUpdate
    case "tamp-community-update-confirm":         self = .tampCommunityUpdateConfirm
    case "tamp-error":                            self = .tampError
    case "tamp-sequence-adjust":                  self = .tampSequenceAdjust
    case "tamp-sequence-adjust-confirm":          self = .tampSequenceAdjustConfirm
    case "tamp-status-query":                     self = .tampStatusQuery
    case "tamp-status-response":                  self = .tampStatusResponse
    case "tamp-update":                           self = .tampUpdate
    case "tamp-update-confirm":                   self = .tampUpdateConfirm
    case "taxii":                                 self = .taxii
    case "td":                                    self = .td
    case "tei":                                   self = .tei
    case "thraud":                                self = .thraud
    case "timestamp-query":                       self = .timestampQuery
    case "timestamp-reply":                       self = .timestampReply
    case "timestamped-data":                      self = .timestampedData
    case "tlsrpt":                                self = .tlsrpt
    case "tnauthlist":                            self = .tnauthlist
    case "token-introspection":                   self = .tokenIntrospection
    case "trickle-ice-sdpfrag":                   self = .trickleIceSdpfrag
    case "trig":                                  self = .trig
    case "ttml":                                  self = .ttml
    case "tve-trigger":                           self = .tveTrigger
    case "tzif":                                  self = .tzif
    case "tzif-leap":                             self = .tzifLeap
    case "ulpfec":                                self = .ulpfec
    case "urc-grpsheet":                          self = .urcGrpsheet
    case "urc-ressheet":                          self = .urcRessheet
    case "urc-targetdesc":                        self = .urcTargetdesc
    case "urc-uisocketdesc":                      self = .urcUisocketdesc
    case "vcard":                                 self = .vcard
    case "vemmi":                                 self = .vemmi
    case "voicexml":                              self = .voicexml
    case "voucher-cms":                           self = .voucherCms
    case "vq-rtcpxr":                             self = .vqRtcpxr
    case "wasm":                                  self = .wasm
    case "watcherinfo":                           self = .watcherinfo
    case "webpush-options":                       self = .webpushOptions
    case "whoispp-query":                         self = .whoisppQuery
    case "whoispp-response":                      self = .whoisppResponse
    case "widget":                                self = .widget
    case "wita":                                  self = .wita
    case "wsdl":                                  self = .wsdl
    case "wspolicy":                              self = .wspolicy
    case "x-pki-message":                         self = .xPkiMessage
    case "x-www-form-urlencoded":                 self = .xWwwFormUrlencoded
    case "x-x509-ca-cert":                        self = .xX509CaCert
    case "x-x509-ca-ra-cert":                     self = .xX509CaRaCert
    case "x-x509-next-ca-cert":                   self = .xX509NextCaCert
    case "x400-bp":                               self = .x400Bp
    case "xacml":                                 self = .xacml
    case "xcap-att":                              self = .xcapAtt
    case "xcap-caps":                             self = .xcapCaps
    case "xcap-diff":                             self = .xcapDiff
    case "xcap-el":                               self = .xcapEl
    case "xcap-error":                            self = .xcapError
    case "xcap-ns":                               self = .xcapNs
    case "xcon-conference-info-diff":             self = .xconConferenceInfoDiff
    case "xcon-conference-info":                  self = .xconConferenceInfo
    case "xenc":                                  self = .xenc
    case "xhtml":                                 self = .xhtml
    case "xliff":                                 self = .xliff
    case "xml":                                   self = .xml
    case "xml-dtd":                               self = .xmlDtd
    case "xml-external-parsed-entity":            self = .xmlExternalParsedEntity
    case "xml-patch":                             self = .xmlPatch
    case "xmpp":                                  self = .xmpp
    case "xop":                                   self = .xop
    case "xslt":                                  self = .xslt
    case "xv":                                    self = .xv
    case "yang":                                  self = .yang
    case "yang-data":                             self = .yangData
    case "yang-patch":                            self = .yangPatch
    case "yin":                                   self = .yin
    case "zip":                                   self = .zip
    case "zlib":                                  self = .zlib
    case "zstd":                                  self = .zstd
    case "*":                                     self = .any
    default:                                      self = .other(rawValue)
    }
  }

  public var rawValue: String {
    switch self {
    case .A2L:                                return "A2L"
    case .AML:                                return "AML"
    case .ATF:                                return "ATF"
    case .ATFX:                               return "ATFX"
    case .ATXML:                              return "ATXML"
    case .CALS1840:                           return "CALS-1840"
    case .CDFX:                               return "CDFX"
    case .CEA:                                return "CEA"
    case .CSTAdata:                           return "CSTAdata"
    case .DCD:                                return "DCD"
    case .DII:                                return "DII"
    case .DIT:                                return "DIT"
    case .EDIConsent:                         return "EDI-consent"
    case .EDIFACT:                            return "EDIFACT"
    case .EDIX12:                             return "EDI-X12"
    case .H224:                               return "H224"
    case .IOTP:                               return "IOTP"
    case .ISUP:                               return "ISUP"
    case .LXF:                                return "LXF"
    case .MF4:                                return "MF4"
    case .ODA:                                return "ODA"
    case .ODX:                                return "ODX"
    case .PDX:                                return "PDX"
    case .QSIG:                               return "QSIG"
    case .SGML:                               return "SGML"
    case .TETRA_ISI:                          return "TETRA_ISI"
    case ._1dInterleavedParityfec:            return "1d-interleaved-parityfec"
    case ._3gpdashQoeReport:                  return "3gpdash-qoe-report"
    case ._3gppHal:                           return "3gppHal"
    case ._3gppHalForms:                      return "3gppHalForms"
    case ._3gppIms:                           return "3gpp-ims"
    case .ace:                                return "ace"
    case .activemessage:                      return "activemessage"
    case .activity:                           return "activity"
    case .altoCostmap:                        return "alto-costmap"
    case .altoCostmapfilter:                  return "alto-costmapfilter"
    case .altoDirectory:                      return "alto-directory"
    case .altoEndpointprop:                   return "alto-endpointprop"
    case .altoEndpointpropparams:             return "alto-endpointpropparams"
    case .altoEndpointcost:                   return "alto-endpointcost"
    case .altoEndpointcostparams:             return "alto-endpointcostparams"
    case .altoError:                          return "alto-error"
    case .altoNetworkmapfilter:               return "alto-networkmapfilter"
    case .altoNetworkmap:                     return "alto-networkmap"
    case .altoUpdatestreamcontrol:            return "alto-updatestreamcontrol"
    case .altoUpdatestreamparams:             return "alto-updatestreamparams"
    case .andrewInset:                        return "andrew-inset"
    case .applefile:                          return "applefile"
    case .at:                                 return "at"
    case .atom:                               return "atom"
    case .atomcat:                            return "atomcat"
    case .atomdeleted:                        return "atomdeleted"
    case .atomicmail:                         return "atomicmail"
    case .atomsvc:                            return "atomsvc"
    case .atscDwd:                            return "atsc-dwd"
    case .atscDynamicEventMessage:            return "atsc-dynamic-event-message"
    case .atscHeld:                           return "atsc-held"
    case .atscRdt:                            return "atsc-rdt"
    case .atscRsat:                           return "atsc-rsat"
    case .authPolicy:                         return "auth-policy"
    case .bacnetXdd:                          return "bacnet-xdd"
    case .batchSMTP:                          return "batch-SMTP"
    case .beep:                               return "beep"
    case .calendar:                           return "calendar"
    case .callCompletion:                     return "call-completion"
    case .captive:                            return "captive"
    case .cbor:                               return "cbor"
    case .cborSeq:                            return "cbor-seq"
    case .cccex:                              return "cccex"
    case .ccmp:                               return "ccmp"
    case .ccxml:                              return "ccxml"
    case .cdmiCapability:                     return "cdmi-capability"
    case .cdmiContainer:                      return "cdmi-container"
    case .cdmiDomain:                         return "cdmi-domain"
    case .cdmiObject:                         return "cdmi-object"
    case .cdmiQueue:                          return "cdmi-queue"
    case .cdni:                               return "cdni"
    case .cea2018:                            return "cea-2018"
    case .cellml:                             return "cellml"
    case .cfw:                                return "cfw"
    case .clr:                                return "clr"
    case .clue_info:                          return "clue_info"
    case .clue:                               return "clue"
    case .cms:                                return "cms"
    case .cnrp:                               return "cnrp"
    case .coapGroup:                          return "coap-group"
    case .coapPayload:                        return "coap-payload"
    case .commonground:                       return "commonground"
    case .conferenceInfo:                     return "conference-info"
    case .cpl:                                return "cpl"
    case .cose:                               return "cose"
    case .coseKey:                            return "cose-key"
    case .coseKeySet:                         return "cose-key-set"
    case .csrattrs:                           return "csrattrs"
    case .csta:                               return "csta"
    case .csvm:                               return "csvm"
    case .cwt:                                return "cwt"
    case .cybercash:                          return "cybercash"
    case .dash:                               return "dash"
    case .dashdelta:                          return "dashdelta"
    case .davmount:                           return "davmount"
    case .dcaRft:                             return "dca-rft"
    case .decDx:                              return "dec-dx"
    case .dialogInfo:                         return "dialog-info"
    case .dicom:                              return "dicom"
    case .dns:                                return "dns"
    case .dnsMessage:                         return "dns-message"
    case .dots:                               return "dots"
    case .dskpp:                              return "dskpp"
    case .dssc:                               return "dssc"
    case .dvcs:                               return "dvcs"
    case .ecmascript:                         return "ecmascript"
    case .efi:                                return "efi"
    case .elm:                                return "elm"
    case .emma:                               return "emma"
    case .emotionml:                          return "emotionml"
    case .encaprtp:                           return "encaprtp"
    case .epp:                                return "epp"
    case .epub:                               return "epub"
    case .eshop:                              return "eshop"
    case .example:                            return "example"
    case .exi:                                return "exi"
    case .expectCtReport:                     return "expect-ct-report"
    case .express:                            return "express"
    case .fastinfoset:                        return "fastinfoset"
    case .fastsoap:                           return "fastsoap"
    case .fdt:                                return "fdt"
    case .fhir:                               return "fhir"
    case .fits:                               return "fits"
    case .flexfec:                            return "flexfec"
    case .fontSfnt:                           return "font-sfnt"
    case .fontTdpfr:                          return "font-tdpfr"
    case .fontWoff:                           return "font-woff"
    case .frameworkAttributes:                return "framework-attributes"
    case .geo:                                return "geo"
    case .geopackage:                         return "geopackage"
    case .geoxacml:                           return "geoxacml"
    case .gltfBuffer:                         return "gltf-buffer"
    case .gml:                                return "gml"
    case .gzip:                               return "gzip"
    case .held:                               return "held"
    case .http:                               return "http"
    case .hyperstudio:                        return "hyperstudio"
    case .ibeKeyRequest:                      return "ibe-key-request"
    case .ibePkgReply:                        return "ibe-pkg-reply"
    case .ibePpData:                          return "ibe-pp-data"
    case .iges:                               return "iges"
    case .imIscomposing:                      return "im-iscomposing"
    case .index:                              return "index"
    case .inkml:                              return "inkml"
    case .ipfix:                              return "ipfix"
    case .ipp:                                return "ipp"
    case .its:                                return "its"
    case .javascript:                         return "javascript"
    case .jf2feed:                            return "jf2feed"
    case .jose:                               return "jose"
    case .jrd:                                return "jrd"
    case .jscalendar:                         return "jscalendar"
    case .json:                               return "json"
    case .jsonPatch:                          return "json-patch"
    case .jsonSeq:                            return "json-seq"
    case .jwk:                                return "jwk"
    case .jwkSet:                             return "jwk-set"
    case .jwt:                                return "jwt"
    case .kpmlRequest:                        return "kpml-request"
    case .kpmlResponse:                       return "kpml-response"
    case .ld:                                 return "ld"
    case .lgr:                                return "lgr"
    case .linkFormat:                         return "link-format"
    case .loadControl:                        return "load-control"
    case .lost:                               return "lost"
    case .lostsync:                           return "lostsync"
    case .lpf:                                return "lpf"
    case .macBinhex40:                        return "mac-binhex40"
    case .macwriteii:                         return "macwriteii"
    case .mads:                               return "mads"
    case .manifest:                           return "manifest"
    case .marc:                               return "marc"
    case .marcxml:                            return "marcxml"
    case .mathematica:                        return "mathematica"
    case .mathml:                             return "mathml"
    case .mathmlContent:                      return "mathml-content"
    case .mathmlPresentation:                 return "mathml-presentation"
    case .mbmsAssociatedProcedureDescription: return "mbms-associated-procedure-description"
    case .mbmsDeregister:                     return "mbms-deregister"
    case .mbmsEnvelope:                       return "mbms-envelope"
    case .mbmsMskResponse:                    return "mbms-msk-response"
    case .mbmsMsk:                            return "mbms-msk"
    case .mbmsProtectionDescription:          return "mbms-protection-description"
    case .mbmsReceptionReport:                return "mbms-reception-report"
    case .mbmsRegisterResponse:               return "mbms-register-response"
    case .mbmsRegister:                       return "mbms-register"
    case .mbmsSchedule:                       return "mbms-schedule"
    case .mbmsUserServiceDescription:         return "mbms-user-service-description"
    case .mbox:                               return "mbox"
    case .media_control:                      return "media_control"
    case .mediaPolicyDataset:                 return "media-policy-dataset"
    case .mediaservercontrol:                 return "mediaservercontrol"
    case .mergePatch:                         return "merge-patch"
    case .metalink4:                          return "metalink4"
    case .mets:                               return "mets"
    case .mikey:                              return "mikey"
    case .mipc:                               return "mipc"
    case .missingBlocks:                      return "missing-blocks"
    case .mmtAei:                             return "mmt-aei"
    case .mmtUsd:                             return "mmt-usd"
    case .mods:                               return "mods"
    case .mossKeys:                           return "moss-keys"
    case .mossSignature:                      return "moss-signature"
    case .mosskeyData:                        return "mosskey-data"
    case .mosskeyRequest:                     return "mosskey-request"
    case .mp21:                               return "mp21"
    case .mp4:                                return "mp4"
    case .mpeg4Generic:                       return "mpeg4-generic"
    case .mpeg4Iod:                           return "mpeg4-iod"
    case .mpeg4IodXmt:                        return "mpeg4-iod-xmt"
    case .mrbConsumer:                        return "mrb-consumer"
    case .mrbPublish:                         return "mrb-publish"
    case .mscIvr:                             return "msc-ivr"
    case .mscMixer:                           return "msc-mixer"
    case .msword:                             return "msword"
    case .mud:                                return "mud"
    case .multipartCore:                      return "multipart-core"
    case .mxf:                                return "mxf"
    case .nQuads:                             return "n-quads"
    case .nTriples:                           return "n-triples"
    case .nasdata:                            return "nasdata"
    case .newsCheckgroups:                    return "news-checkgroups"
    case .newsGroupinfo:                      return "news-groupinfo"
    case .newsTransmission:                   return "news-transmission"
    case .nlsml:                              return "nlsml"
    case .node:                               return "node"
    case .nss:                                return "nss"
    case .oauthAuthzReq:                      return "oauth-authz-req"
    case .ocspRequest:                        return "ocsp-request"
    case .ocspResponse:                       return "ocsp-response"
    case .octetStream:                        return "octet-stream"
    case .odm:                                return "odm"
    case .oebpsPackage:                       return "oebps-package"
    case .ogg:                                return "ogg"
    case .opcNodeset:                         return "opc-nodeset"
    case .oscore:                             return "oscore"
    case .oxps:                               return "oxps"
    case .p21:                                return "p21"
    case .p2pOverlay:                         return "p2p-overlay"
    case .parityfec:                          return "parityfec"
    case .passport:                           return "passport"
    case .patchOpsError:                      return "patch-ops-error"
    case .pdf:                                return "pdf"
    case .pemCertificateChain:                return "pem-certificate-chain"
    case .pgpEncrypted:                       return "pgp-encrypted"
    case .pgpKeys:                            return "pgp-keys"
    case .pgpSignature:                       return "pgp-signature"
    case .pidfDiff:                           return "pidf-diff"
    case .pidf:                               return "pidf"
    case .pkcs10:                             return "pkcs10"
    case .pkcs7Mime:                          return "pkcs7-mime"
    case .pkcs7Signature:                     return "pkcs7-signature"
    case .pkcs8:                              return "pkcs8"
    case .pkcs8Encrypted:                     return "pkcs8-encrypted"
    case .pkcs12:                             return "pkcs12"
    case .pkixAttrCert:                       return "pkix-attr-cert"
    case .pkixCert:                           return "pkix-cert"
    case .pkixCrl:                            return "pkix-crl"
    case .pkixPkipath:                        return "pkix-pkipath"
    case .pkixcmp:                            return "pkixcmp"
    case .pls:                                return "pls"
    case .pocSettings:                        return "poc-settings"
    case .postscript:                         return "postscript"
    case .ppspTracker:                        return "ppsp-tracker"
    case .problem:                            return "problem"
    case .provenance:                         return "provenance"
    case .pskc:                               return "pskc"
    case .pvd:                                return "pvd"
    case .rdf:                                return "rdf"
    case .routeApd:                           return "route-apd"
    case .routeSTsid:                         return "route-s-tsid"
    case .routeUsd:                           return "route-usd"
    case .raptorfec:                          return "raptorfec"
    case .rdap:                               return "rdap"
    case .reginfo:                            return "reginfo"
    case .relaxNgCompactSyntax:               return "relax-ng-compact-syntax"
    case .remotePrinting:                     return "remote-printing"
    case .reputon:                            return "reputon"
    case .resourceListsDiff:                  return "resource-lists-diff"
    case .resourceLists:                      return "resource-lists"
    case .rfc:                                return "rfc"
    case .riscos:                             return "riscos"
    case .rlmi:                               return "rlmi"
    case .rlsServices:                        return "rls-services"
    case .rpkiGhostbusters:                   return "rpki-ghostbusters"
    case .rpkiManifest:                       return "rpki-manifest"
    case .rpkiPublication:                    return "rpki-publication"
    case .rpkiRoa:                            return "rpki-roa"
    case .rpkiUpdown:                         return "rpki-updown"
    case .rtf:                                return "rtf"
    case .rtploopback:                        return "rtploopback"
    case .rtx:                                return "rtx"
    case .samlassertion:                      return "samlassertion"
    case .samlmetadata:                       return "samlmetadata"
    case .sarifExternalProperties:            return "sarif-external-properties"
    case .sarif:                              return "sarif"
    case .sbe:                                return "sbe"
    case .sbml:                               return "sbml"
    case .scaip:                              return "scaip"
    case .scim:                               return "scim"
    case .scvpCvRequest:                      return "scvp-cv-request"
    case .scvpCvResponse:                     return "scvp-cv-response"
    case .scvpVpRequest:                      return "scvp-vp-request"
    case .scvpVpResponse:                     return "scvp-vp-response"
    case .sdp:                                return "sdp"
    case .secevent:                           return "secevent"
    case .senmlEtch:                          return "senml-etch"
    case .senmlExi:                           return "senml-exi"
    case .senml:                              return "senml"
    case .sensmlExi:                          return "sensml-exi"
    case .sensml:                             return "sensml"
    case .sepExi:                             return "sep-exi"
    case .sep:                                return "sep"
    case .sessionInfo:                        return "session-info"
    case .setPayment:                         return "set-payment"
    case .setPaymentInitiation:               return "set-payment-initiation"
    case .setRegistration:                    return "set-registration"
    case .setRegistrationInitiation:          return "set-registration-initiation"
    case .sgmlOpenCatalog:                    return "sgml-open-catalog"
    case .shf:                                return "shf"
    case .sieve:                              return "sieve"
    case .simpleFilter:                       return "simple-filter"
    case .simpleMessageSummary:               return "simple-message-summary"
    case .simpleSymbolContainer:              return "simpleSymbolContainer"
    case .sipc:                               return "sipc"
    case .slate:                              return "slate"
    case .smil:                               return "smil"
    case .smpte336m:                          return "smpte336m"
    case .soap:                               return "soap"
    case .sparqlQuery:                        return "sparql-query"
    case .sparqlResults:                      return "sparql-results"
    case .spiritsEvent:                       return "spirits-event"
    case .sql:                                return "sql"
    case .srgs:                               return "srgs"
    case .sru:                                return "sru"
    case .ssml:                               return "ssml"
    case .stix:                               return "stix"
    case .swid:                               return "swid"
    case .tampApexUpdate:                     return "tamp-apex-update"
    case .tampApexUpdateConfirm:              return "tamp-apex-update-confirm"
    case .tampCommunityUpdate:                return "tamp-community-update"
    case .tampCommunityUpdateConfirm:         return "tamp-community-update-confirm"
    case .tampError:                          return "tamp-error"
    case .tampSequenceAdjust:                 return "tamp-sequence-adjust"
    case .tampSequenceAdjustConfirm:          return "tamp-sequence-adjust-confirm"
    case .tampStatusQuery:                    return "tamp-status-query"
    case .tampStatusResponse:                 return "tamp-status-response"
    case .tampUpdate:                         return "tamp-update"
    case .tampUpdateConfirm:                  return "tamp-update-confirm"
    case .taxii:                              return "taxii"
    case .td:                                 return "td"
    case .tei:                                return "tei"
    case .thraud:                             return "thraud"
    case .timestampQuery:                     return "timestamp-query"
    case .timestampReply:                     return "timestamp-reply"
    case .timestampedData:                    return "timestamped-data"
    case .tlsrpt:                             return "tlsrpt"
    case .tnauthlist:                         return "tnauthlist"
    case .tokenIntrospection:                 return "token-introspection"
    case .trickleIceSdpfrag:                  return "trickle-ice-sdpfrag"
    case .trig:                               return "trig"
    case .ttml:                               return "ttml"
    case .tveTrigger:                         return "tve-trigger"
    case .tzif:                               return "tzif"
    case .tzifLeap:                           return "tzif-leap"
    case .ulpfec:                             return "ulpfec"
    case .urcGrpsheet:                        return "urc-grpsheet"
    case .urcRessheet:                        return "urc-ressheet"
    case .urcTargetdesc:                      return "urc-targetdesc"
    case .urcUisocketdesc:                    return "urc-uisocketdesc"
    case .vcard:                              return "vcard"
    case .vemmi:                              return "vemmi"
    case .voicexml:                           return "voicexml"
    case .voucherCms:                         return "voucher-cms"
    case .vqRtcpxr:                           return "vq-rtcpxr"
    case .wasm:                               return "wasm"
    case .watcherinfo:                        return "watcherinfo"
    case .webpushOptions:                     return "webpush-options"
    case .whoisppQuery:                       return "whoispp-query"
    case .whoisppResponse:                    return "whoispp-response"
    case .widget:                             return "widget"
    case .wita:                               return "wita"
    case .wsdl:                               return "wsdl"
    case .wspolicy:                           return "wspolicy"
    case .xPkiMessage:                        return "x-pki-message"
    case .xWwwFormUrlencoded:                 return "x-www-form-urlencoded"
    case .xX509CaCert:                        return "x-x509-ca-cert"
    case .xX509CaRaCert:                      return "x-x509-ca-ra-cert"
    case .xX509NextCaCert:                    return "x-x509-next-ca-cert"
    case .x400Bp:                             return "x400-bp"
    case .xacml:                              return "xacml"
    case .xcapAtt:                            return "xcap-att"
    case .xcapCaps:                           return "xcap-caps"
    case .xcapDiff:                           return "xcap-diff"
    case .xcapEl:                             return "xcap-el"
    case .xcapError:                          return "xcap-error"
    case .xcapNs:                             return "xcap-ns"
    case .xconConferenceInfoDiff:             return "xcon-conference-info-diff"
    case .xconConferenceInfo:                 return "xcon-conference-info"
    case .xenc:                               return "xenc"
    case .xhtml:                              return "xhtml"
    case .xliff:                              return "xliff"
    case .xml:                                return "xml"
    case .xmlDtd:                             return "xml-dtd"
    case .xmlExternalParsedEntity:            return "xml-external-parsed-entity"
    case .xmlPatch:                           return "xml-patch"
    case .xmpp:                               return "xmpp"
    case .xop:                                return "xop"
    case .xslt:                               return "xslt"
    case .xv:                                 return "xv"
    case .yang:                               return "yang"
    case .yangData:                           return "yang-data"
    case .yangPatch:                          return "yang-patch"
    case .yin:                                return "yin"
    case .zip:                                return "zip"
    case .zlib:                               return "zlib"
    case .zstd:                               return "zstd"
    case .other(let other):                   return other
    case .any:                                return "*"
    }
  }
}
