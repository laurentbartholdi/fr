#############################################################################
##
##  PackageInfo.g for the package `FR'                    Laurent Bartholdi
##
SetPackageInfo( rec(
PackageName := "FR",
Subtitle := "Computations with functionally recursive groups",
Version := "2.4.1",
Date := "09/02/2017",
## <#GAPDoc Label="Version">
## <!ENTITY Version "2.4.1">
## <!ENTITY Date "09/02/2017">
## <#/GAPDoc>

Persons := [
  rec(
    LastName      := "Bartholdi",
    FirstNames    := "Laurent",
    IsAuthor      := true,
    IsMaintainer  := true,
    Email         := "laurent.bartholdi@gmail.com",
    WWWHome       := "http://www.uni-math.gwdg.de/laurent",
    PostalAddress := Concatenation( [
                       "Mathematisches Institut\n",
                       "Bunsenstraße 3-5\n",
                       "D-37073 Göttingen\n",
                       "Germany" ] ),
    Place         := "Göttingen",
    Institution   := "Georg-August Universität zu Göttingen"
  )
],

Status := "deposited",
CommunicatedBy := "Götz Pfeiffer (NUI Galway)",
#AcceptDate := "",

SourceRepository := rec(
    Type := "git",
    URL := Concatenation( "https://github.com/gap-packages/", LowercaseString(~.PackageName) ),
),
IssueTrackerURL := Concatenation( ~.SourceRepository.URL, "/issues" ),
PackageWWWHome  := Concatenation( "https://gap-packages.github.io/", LowercaseString(~.PackageName) ),
README_URL      := Concatenation( ~.PackageWWWHome, "/README" ),
PackageInfoURL  := Concatenation( ~.PackageWWWHome, "/PackageInfo.g" ),
ArchiveURL      := Concatenation( ~.SourceRepository.URL,
                                 "/releases/download/v", ~.Version,
                                 "/", LowercaseString(~.PackageName), "-", ~.Version ),
ArchiveFormats := ".tar.gz",

AbstractHTML := "The <span class=\"pkgname\">fr</span> package allows \
   GAP to manipulate groups generated by automata, and more generally \
   functionally recursive groups",

PackageDoc := rec(
  BookName  := "fr",
  HTMLStart := "doc/chap0.html",
  PDFFile   := "doc/manual.pdf",
  SixFile   := "doc/manual.six",
  LongTitle := "Functionally recursive and automata groups",
  ArchiveURLSubset := ["doc"],
  Autoload  := true
),

Dependencies := rec(
  GAP := ">=4.8",
  NeededOtherPackages := [["FGA",">=1.1"],
                      ["Polycyclic",">=2.2"],
                      ["GAPDoc",">=1.0"]],
  SuggestedOtherPackages := [["GBNP",">=0.9"],
                      ["NQ",">=2.4"],
                      ["LPRES",">=0.1"]],
  # additional desired packages: graphviz, display
  ExternalConditions := []
),

AvailabilityTest := ReturnTrue,
                    
BannerString := Concatenation("Loading ", ~.PackageName, " ", String( ~.Version ), " ...\n"),

Autoload := false,
TestFile := "tst/testall.g",
Keywords := ["functionally recursive group", "mealy machine", "automata group"]
));
