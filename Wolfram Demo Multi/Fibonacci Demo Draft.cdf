(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 10.2' *)

(*************************************************************************)
(*                                                                       *)
(*  The Mathematica License under which this file was created prohibits  *)
(*  restricting third parties in receipt of this file from republishing  *)
(*  or redistributing it by any means, including but not limited to      *)
(*  rights management or terms of use, without the express consent of    *)
(*  Wolfram Research, Inc. For additional information concerning CDF     *)
(*  licensing and redistribution see:                                    *)
(*                                                                       *)
(*        www.wolfram.com/cdf/adopting-cdf/licensing-options.html        *)
(*                                                                       *)
(*************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[      1064,         20]
NotebookDataLength[     25600,        749]
NotebookOptionsPosition[     21935,        617]
NotebookOutlinePosition[     23619,        672]
CellTagsIndexPosition[     23299,        660]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["Iteration and Recursion in the Fibonacci Sequence", "DemoTitle"],

Cell[CellGroupData[{

Cell["", "InitializationSection"],

Cell[BoxData[{
 RowBox[{
  RowBox[{"Initialization", " ", "\[RuleDelayed]", "\[IndentingNewLine]", 
   RowBox[{"Unprotect", "[", "Sqrt", "]"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{"\t", 
  RowBox[{
   RowBox[{"recFxnTime", "[", "x_", "]"}], " ", ":=", " ", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{"1", "+", 
          RowBox[{"Sqrt", "[", "5", "]"}]}], ")"}], "/", "2"}], ")"}], "^", 
      "x"}], ")"}], "/", "10000"}]}]}], "\[IndentingNewLine]", 
 RowBox[{"\t", 
  RowBox[{
   RowBox[{"itFxnTime", "[", "x_", "]"}], " ", ":=", " ", 
   RowBox[{"x", "*", "1000"}]}], 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{"\t", 
  RowBox[{
   RowBox[{"timeComplex", "[", "n_", "]"}], " ", ":=", " ", 
   RowBox[{"Plot", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"recFxnTime", "[", "x", "]"}], ",", " ", 
       RowBox[{"itFxnTime", "[", "x", "]"}]}], "}"}], ",", " ", 
     RowBox[{"{", 
      RowBox[{"x", ",", " ", "0", ",", " ", "n"}], "}"}], ",", 
     RowBox[{"PlotRange", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"0", ",", " ", "50"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"0", ",", "100000"}], "}"}]}], "}"}]}], ",", 
     RowBox[{"PlotLabel", "\[Rule]", "  ", "\"\<Time Complexity\>\""}], ",", 
     RowBox[{"AxesLabel", " ", "\[Rule]", " ", 
      RowBox[{"{", 
       RowBox[{"\"\<n\>\"", ",", " ", "time"}], "}"}]}]}], "]"}]}], 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{"\t", 
  RowBox[{
   RowBox[{"recFxnSpace", "[", "x_", "]"}], " ", ":=", " ", 
   "x"}]}], "\[IndentingNewLine]", 
 RowBox[{"\t", 
  RowBox[{
   RowBox[{"itFxnSpace", "[", "x_", "]"}], " ", ":=", " ", "x"}], 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{"\t", 
  RowBox[{
   RowBox[{"spaceComplex", "[", "n_", "]"}], " ", ":=", " ", 
   RowBox[{"Plot", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"recFxnSpace", "[", "x", "]"}], ",", " ", 
       RowBox[{"itFxnSpace", "[", "x", "]"}]}], "}"}], ",", " ", 
     RowBox[{"{", 
      RowBox[{"x", ",", " ", "0", ",", " ", "n"}], "}"}], ",", 
     RowBox[{"PlotRange", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"0", ",", " ", "50"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"0", ",", "100"}], "}"}]}], "}"}]}], ",", 
     RowBox[{"PlotLabel", "\[Rule]", "  ", "\"\<Space Complexity\>\""}], ",", 
     
     RowBox[{"AxesLabel", " ", "\[Rule]", " ", 
      RowBox[{"{", 
       RowBox[{"\"\<n\>\"", ",", " ", "space"}], "}"}]}]}], "]"}]}], 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{"\t", 
  RowBox[{
   RowBox[{"itTree", "[", "n_", "]"}], ":=", 
   RowBox[{"Module", "[", " ", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"itTreeArray", " ", "=", " ", 
        RowBox[{"{", "}"}]}], ",", " ", 
       RowBox[{"n0", " ", "=", " ", "n"}]}], "}"}], " ", ",", 
     "\[IndentingNewLine]", "\t\t\t\t\t", 
     RowBox[{
      RowBox[{"For", "[", 
       RowBox[{
        RowBox[{"i", "=", "3"}], ",", 
        RowBox[{"i", "\[LessEqual]", "n0"}], ",", 
        RowBox[{"i", "++"}], ",", 
        RowBox[{
         RowBox[{"AppendTo", "[", 
          RowBox[{"itTreeArray", ",", " ", 
           RowBox[{
            RowBox[{"i", "-", "2"}], " ", "\[Rule]", " ", "i"}]}], "]"}], ";",
          "  ", 
         RowBox[{"AppendTo", "[", 
          RowBox[{"itTreeArray", ",", 
           RowBox[{
            RowBox[{"i", "-", "1"}], " ", "\[Rule]", " ", "i"}]}], "]"}]}]}], 
       "]"}], ";", "\[IndentingNewLine]", "\t\t\t\t\t", 
      RowBox[{"TreePlot", "[", 
       RowBox[{"itTreeArray", ",", "Right", ",", "  ", 
        RowBox[{"VertexLabeling", "\[Rule]", "True"}], ",", " ", 
        RowBox[{"DirectedEdges", "\[Rule]", "True"}]}], "]"}]}]}], 
    "\[IndentingNewLine]", "\t\t\t\t\t", 
    "]"}]}]}], "\[IndentingNewLine]"}], "Input",
 InitializationCell->True,
 CellID->428081845]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "ManipulateSection"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", 
  RowBox[{
   RowBox[{"GraphicsGrid", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"timeComplex", "[", "n", "]"}], ",", " ", 
         RowBox[{"spaceComplex", "[", "n", "]"}]}], "}"}], ",", " ", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"Graphics", "[", 
          RowBox[{
           RowBox[{"itTree", "[", "n", "]"}], ",", " ", 
           RowBox[{"ImageSize", "\[Rule]", " ", 
            RowBox[{"{", 
             RowBox[{"50", ",", "50"}], "}"}]}]}], "]"}], ",", " ", 
         "SpanFromLeft"}], "}"}]}], "}"}], ",", " ", 
     RowBox[{"Alignment", " ", "\[Rule]", " ", "Center"}], ",", 
     RowBox[{"Frame", " ", "\[Rule]", " ", "All"}]}], "]"}], ",", " ", 
   RowBox[{"{", 
    RowBox[{"n", ",", " ", "3", ",", " ", "50"}], "}"}], ",", " ", 
   RowBox[{"SaveDefinitions", "\[Rule]", "True"}]}], "]"}]], "Input"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`n$$ = 3., Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{
      Hold[$CellContext`n$$], 3, 50}}, Typeset`size$$ = {360., {144., 148.}}, 
    Typeset`update$$ = 0, Typeset`initDone$$, Typeset`skipInitDone$$ = 
    False, $CellContext`n$19360$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {$CellContext`n$$ = 3}, 
      "ControllerVariables" :> {
        Hold[$CellContext`n$$, $CellContext`n$19360$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> GraphicsGrid[{{
          $CellContext`timeComplex[$CellContext`n$$], 
          $CellContext`spaceComplex[$CellContext`n$$]}, {
          Graphics[
           $CellContext`itTree[$CellContext`n$$], ImageSize -> {50, 50}], 
          SpanFromLeft}}, Alignment -> Center, Frame -> All], 
      "Specifications" :> {{$CellContext`n$$, 3, 50}}, "Options" :> {}, 
      "DefaultOptions" :> {ControllerLinking -> True}],
     ImageSizeCache->{403., {187., 192.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`timeComplex[
         Pattern[$CellContext`n, 
          Blank[]]] := Plot[{
          $CellContext`recFxnTime[$CellContext`x], 
          $CellContext`itFxnTime[$CellContext`x]}, {$CellContext`x, 
          0, $CellContext`n}, PlotRange -> {{0, 50}, {0, 100000}}, PlotLabel -> 
         "Time Complexity", 
         AxesLabel -> {"n", $CellContext`time}], $CellContext`recFxnTime[
         Pattern[$CellContext`x, 
          Blank[]]] := ((1 + Sqrt[5])/2)^$CellContext`x/
        10000, $CellContext`itFxnTime[
         Pattern[$CellContext`x, 
          Blank[]]] := $CellContext`x 1000, $CellContext`spaceComplex[
         Pattern[$CellContext`n, 
          Blank[]]] := Plot[{
          $CellContext`recFxnSpace[$CellContext`x], 
          $CellContext`itFxnSpace[$CellContext`x]}, {$CellContext`x, 
          0, $CellContext`n}, PlotRange -> {{0, 50}, {0, 100}}, PlotLabel -> 
         "Space Complexity", 
         AxesLabel -> {"n", $CellContext`space}], $CellContext`recFxnSpace[
         Pattern[$CellContext`x, 
          Blank[]]] := $CellContext`x, $CellContext`itFxnSpace[
         Pattern[$CellContext`x, 
          Blank[]]] := $CellContext`x, $CellContext`itTree[
         Pattern[$CellContext`n, 
          Blank[]]] := 
       Module[{$CellContext`itTreeArray = {}, $CellContext`n0 = \
$CellContext`n}, For[$CellContext`i = 3, $CellContext`i <= $CellContext`n0, 
           Increment[$CellContext`i], 
           AppendTo[$CellContext`itTreeArray, $CellContext`i - 
              2 -> $CellContext`i]; 
           AppendTo[$CellContext`itTreeArray, $CellContext`i - 
              1 -> $CellContext`i]]; 
         TreePlot[$CellContext`itTreeArray, Right, VertexLabeling -> True, 
           DirectedEdges -> True]], $CellContext`i = 43}; 
     Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellID->1955058437]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "ManipulateCaptionSection"],

Cell["\<\
The Fibonacci sequence begins with the 0 and 1 as the first two terms, and \
each subsequent number is the sum of the two number immediately prior it. To \
find the nth number of the Fibonacci sequence, you can use two methods: \
iteration (work from the initial condition) or recursion (work backwards \
towards the initial condition). The graphs above compare the time and space \
complexity of finding the nth number using the two methods of iteration and \
recursion. Additionally, the tree above shows the iterative method by which \
the elements are calculated. \
\>", "ManipulateCaption"]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "ThumbnailSection"],

Cell[BoxData[
 GraphicsBox[
  {EdgeForm[GrayLevel[0]], FaceForm[GrayLevel[1]], RectangleBox[{0, 0}], 
   InsetBox[
    StyleBox["\<\"Thumbnail Placeholder\"\>",
     StripOnInput->False,
     FontFamily->"Verdana",
     FontSize->14], {0.5, 0.6}], InsetBox[
    StyleBox["\<\"Replace this with your\"\>",
     StripOnInput->False,
     FrontFaceColor->GrayLevel[0.5],
     GraphicsColor->GrayLevel[0.5],
     FontFamily->"Verdana",
     FontSize->10,
     FontColor->GrayLevel[0.5],
     $CellContext`BackFaceColor -> GrayLevel[0.5]], {0.5, 0.45}], InsetBox[
    StyleBox["\<\"Manipulate at a particular setting.\"\>",
     StripOnInput->False,
     FrontFaceColor->GrayLevel[0.5],
     GraphicsColor->GrayLevel[0.5],
     FontFamily->"Verdana",
     FontSize->10,
     FontColor->GrayLevel[0.5],
     $CellContext`BackFaceColor -> GrayLevel[0.5]], {0.5, 0.39}], InsetBox[
    StyleBox["\<\"(Do not use a bitmap.)\"\>",
     StripOnInput->False,
     FrontFaceColor->GrayLevel[0.5],
     GraphicsColor->GrayLevel[0.5],
     FontFamily->"Verdana",
     FontSize->10,
     FontColor->GrayLevel[0.5],
     $CellContext`BackFaceColor -> GrayLevel[0.5]], {0.5, 0.315}]},
  ImageMargins->0.,
  ImageSize->220]], "Output",
 CellEditDuplicate->False]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "SnapshotsSection"],

Cell[BoxData[
 GraphicsBox[
  {EdgeForm[GrayLevel[0]], FaceForm[GrayLevel[1]], RectangleBox[{0, 0}], 
   InsetBox[
    StyleBox["\<\"Snapshot Placeholder\"\>",
     StripOnInput->False,
     FontFamily->"Verdana",
     FontSize->14], {0.5, 0.6}], InsetBox[
    StyleBox["\<\"Replace this with your\"\>",
     StripOnInput->False,
     FrontFaceColor->GrayLevel[0.5],
     GraphicsColor->GrayLevel[0.5],
     FontFamily->"Verdana",
     FontSize->10,
     FontColor->GrayLevel[0.5],
     $CellContext`BackFaceColor -> GrayLevel[0.5]], {0.5, 0.45}], InsetBox[
    StyleBox["\<\"Manipulate at a particular setting.\"\>",
     StripOnInput->False,
     FrontFaceColor->GrayLevel[0.5],
     GraphicsColor->GrayLevel[0.5],
     FontFamily->"Verdana",
     FontSize->10,
     FontColor->GrayLevel[0.5],
     $CellContext`BackFaceColor -> GrayLevel[0.5]], {0.5, 0.39}], InsetBox[
    StyleBox["\<\"(Do not use a bitmap.)\"\>",
     StripOnInput->False,
     FrontFaceColor->GrayLevel[0.5],
     GraphicsColor->GrayLevel[0.5],
     FontFamily->"Verdana",
     FontSize->10,
     FontColor->GrayLevel[0.5],
     $CellContext`BackFaceColor -> GrayLevel[0.5]], {0.5, 0.315}]},
  ImageMargins->0.,
  ImageSize->220]], "Output",
 CellEditDuplicate->False]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "DetailsSection"],

Cell["\<\
The time complexity for the recursive function can be found by using T(n) = \
T(n-1) + T(n-2). The Fibonacci sequence is related to the golden ratio, which \
is given by (1 + Sqrt[5])/2, and this relationship gives us the recursive \
time complexity. The iterative time complexity relates directly to the number \
of elements. The space complexity is directly related to the number of \
elements for both the iterative and recursive methods. \
\>", "DetailNotes",
 CellID->1523787809],

Cell["\<\
The iterative tree presented uses the arrows to indicate the direction of \
calculation. For example, to compute the third element, the values from the \
first and second element are used. To compute the fourth element, the values \
from the second and third element are used. \
\>", "DetailNotes",
 CellID->1626041038],

Cell[TextData[{
 "T. Corman et al., ",
 StyleBox["Introduction to Algorithms, ",
  FontSlant->"Italic"],
 "Cambridge: Massachusetts Institute of Technology, 2009. "
}], "DetailNotes",
 CellID->1343130830]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "ControlSuggestionsSection"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[False], Cell[" Resize Images"]}],
  "\"Click inside an image to reveal its orange resize frame.\\nDrag any of \
the orange resize handles to resize the image.\"",
  TooltipDelay->0.35]], "ControlSuggestions",
 FontFamily->"Verdana",
 CellTags->"ResizeImages"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[False], Cell[" Rotate and Zoom in 3D"]}],
  RowBox[{
   "\"Drag a 3D graphic to rotate it. Starting the drag near the center \
tumbles\\nthe graphic; starting near a corner turns it parallel to the plane \
of the screen.\\nHold down \"", 
    FrameBox[
    "Ctrl", Background -> GrayLevel[0.9], FrameMargins -> 2, FrameStyle -> 
     GrayLevel[0.9]], "\" (or \"", 
    FrameBox[
    "Cmd", Background -> GrayLevel[0.9], FrameMargins -> 2, FrameStyle -> 
     GrayLevel[0.9]], "\" on Mac) and drag up and down to zoom.\""}],
  TooltipDelay->0.35]], "ControlSuggestions",
 FontFamily->"Verdana",
 CellTags->"RotateAndZoomIn3D"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[False], Cell[" Drag Locators"]}],
  RowBox[{"\"Drag any locator (\"", 
    GraphicsBox[
     LocatorBox[
      Scaled[{0.5, 0.5}]], ImageSize -> 20], 
    "\", etc.) to move it around.\""}],
  TooltipDelay->0.35]], "ControlSuggestions",
 FontFamily->"Verdana",
 CellTags->"DragLocators"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[False], Cell[" Create and Delete Locators"]}],
  RowBox[{"\"Insert a new locator in the graphic by holding down the \"", 
    FrameBox[
    "Alt", Background -> GrayLevel[0.9], FrameMargins -> 2, FrameStyle -> 
     GrayLevel[0.9]], 
    "\" key\\nand clicking where you want it to be. Delete a locator by \
clicking it\\nwhile holding down the \"", 
    FrameBox[
    "Alt", Background -> GrayLevel[0.9], FrameMargins -> 2, FrameStyle -> 
     GrayLevel[0.9]], "\" key.\""}],
  TooltipDelay->0.35]], "ControlSuggestions",
 FontFamily->"Verdana",
 CellTags->"CreateAndDeleteLocators"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[False], Cell[" Slider Zoom"]}],
  RowBox[{"\"Hold down the \"", 
    FrameBox[
    "Alt", Background -> GrayLevel[0.9], FrameMargins -> 2, FrameStyle -> 
     GrayLevel[0.9]], 
    "\" key while moving a slider to make fine adjustments in the slider \
value.\\nHold \"", 
    FrameBox[
    "Ctrl", Background -> GrayLevel[0.9], FrameMargins -> 2, FrameStyle -> 
     GrayLevel[0.9]], "\" and/or \"", 
    FrameBox[
    "Shift", Background -> GrayLevel[0.9], FrameMargins -> 2, FrameStyle -> 
     GrayLevel[0.9]], "\" at the same time as \"", 
    FrameBox[
    "Alt", Background -> GrayLevel[0.9], FrameMargins -> 2, FrameStyle -> 
     GrayLevel[0.9]], "\" to make ever finer adjustments.\""}],
  TooltipDelay->0.35]], "ControlSuggestions",
 FontFamily->"Verdana",
 CellTags->"SliderZoom"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[False], Cell[" Gamepad Controls"]}],
  "\"Control this Demonstration with a gamepad or other\\nhuman interface \
device connected to your computer.\"",
  TooltipDelay->0.35]], "ControlSuggestions",
 FontFamily->"Verdana",
 CellTags->"GamepadControls"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[False], Cell[" Automatic Animation"]}],
  RowBox[{"\"Animate a slider in this Demonstration by clicking the\"", 
    AdjustmentBox[
     Cell[
      GraphicsData[
      "CompressedBitmap", 
       "eJzzTSzJSM1NLMlMTlRwL0osyMhMLlZwyy8CCjEzMjAwcIKwAgOI/R/IhBKc\n\
/4EAyGAG0f+nTZsGwgysIJIRKsWKLAXGIHFmEpUgLADxWUAkI24jZs+eTaEt\n\
IG+wQKRmzJgBlYf5lhEA30OqWA=="], "Graphics", ImageSize -> {9, 9}, ImageMargins -> 
      0, CellBaseline -> Baseline], BoxBaselineShift -> 0.1839080459770115, 
     BoxMargins -> {{0., 0.}, {-0.1839080459770115, 0.1839080459770115}}], 
    "\"button\\nnext to the slider, and then clicking the play button that \
appears.\\nAnimate all controls by selecting \"", 
    StyleBox["Autorun", FontWeight -> "Bold"], "\" from the\"", 
    AdjustmentBox[
     Cell[
      GraphicsData[
      "CompressedBitmap", 
       "eJyNULENwyAQfEySIlMwTVJlCGRFsosokeNtqBmDBagoaZjAI1C8/8GUUUC6\n\
57h7cQ8PvU7Pl17nUav7oj/TPH7V7b2QJAUAXBkKmCPRowxICy64bRvGGNF7\n\
X8CctGoDSN4xhIDGGDhzFXwUh3/ClBKrDQPmnGXtI6u0OOd+tZBVUqy1xSaH\n\
UqiK6pPe4XdEdAz6563tx/gejuORGMxJaz8mdpJn7hc="], "Graphics", 
      ImageSize -> {10, 10}, ImageMargins -> 0, CellBaseline -> Baseline], 
     BoxBaselineShift -> 0.1839080459770115, 
     BoxMargins -> {{0., 0.}, {-0.1839080459770115, 0.1839080459770115}}], 
    "\"menu.\""}],
  TooltipDelay->0.35]], "ControlSuggestions",
 FontFamily->"Verdana",
 CellTags->"AutomaticAnimation"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[False], Cell[" Bookmark Animation"]}],
  RowBox[{
   "\"See a prepared animation of this Demonstration by selecting\\n\"", 
    StyleBox["Animate Bookmarks", FontWeight -> "Bold"], "\" from the\"", 
    AdjustmentBox[
     Cell[
      GraphicsData[
      "CompressedBitmap", 
       "eJyNULENwyAQfEySIlMwTVJlCGRFsosokeNtqBmDBagoaZjAI1C8/8GUUUC6\n\
57h7cQ8PvU7Pl17nUav7oj/TPH7V7b2QJAUAXBkKmCPRowxICy64bRvGGNF7\n\
X8CctGoDSN4xhIDGGDhzFXwUh3/ClBKrDQPmnGXtI6u0OOd+tZBVUqy1xSaH\n\
UqiK6pPe4XdEdAz6563tx/gejuORGMxJaz8mdpJn7hc="], "Graphics", 
      ImageSize -> {10, 10}, ImageMargins -> 0, CellBaseline -> Baseline], 
     BoxBaselineShift -> 0.1839080459770115, 
     BoxMargins -> {{0., 0.}, {-0.1839080459770115, 0.1839080459770115}}], 
    "\"menu.\""}],
  TooltipDelay->0.35]], "ControlSuggestions",
 FontFamily->"Verdana",
 CellTags->"BookmarkAnimation"]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "SearchTermsSection"],

Cell["Fibonacci", "SearchTerms",
 CellID->1771562424],

Cell["Iteration", "SearchTerms",
 CellID->1740548482],

Cell["Iterative", "SearchTerms",
 CellID->1026981659],

Cell["Recursion", "SearchTerms",
 CellID->726700763],

Cell["Recursive", "SearchTerms",
 CellID->14970670],

Cell["Big O Notation", "SearchTerms",
 CellID->1758405254],

Cell["Time Complexity", "SearchTerms",
 CellID->1069681446],

Cell["Space Complexity", "SearchTerms",
 CellID->1925164264],

Cell["Fremd", "SearchTerms",
 CellID->212228433],

Cell["Ann Rajan", "SearchTerms",
 CellID->1412851291]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "RelatedLinksSection"],

Cell[TextData[ButtonBox["Fibonacci Tree",
 BaseStyle->"Hyperlink",
 ButtonData->{
   URL["http://demonstrations.wolfram.com/FibonacciTree/"], None},
 ButtonNote->
  "http://demonstrations.wolfram.com/FibonacciTree/"]], "RelatedLinks",
 CellID->1809783138],

Cell[TextData[ButtonBox["Call Graphs of Fibonacci-Like Functions",
 BaseStyle->"Hyperlink",
 ButtonData->{
   URL["http://demonstrations.wolfram.com/CallGraphsOfFibonacciLikeFunctions/\
"], None},
 ButtonNote->
  "http://demonstrations.wolfram.com/CallGraphsOfFibonacciLikeFunctions/"]], \
"RelatedLinks",
 CellID->2128840472]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "AuthorSection"],

Cell["Contributed by: Ann Rajan", "Author"],

Cell["\<\
Special thanks to the University of Illinois NetMath Program and the \
mathematics department at William Fremd High School. \
\>", "Author",
 CellID->1585153641]
}, Open  ]]
}, Open  ]]
},
WindowSize->{Full, Full},
Visible->True,
ScrollingOptions->{"VerticalScrollRange"->Fit},
ShowCellBracket->Automatic,
CellContext->Notebook,
TrackCellChangeTimes->False,
FrontEndVersion->"10.2 for Mac OS X x86 (32-bit, 64-bit Kernel) (July 29, \
2015)",
StyleDefinitions->FrontEnd`FileName[{"Wolfram"}, "Demonstration.nb", 
  CharacterEncoding -> "UTF-8"]
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{
 "ResizeImages"->{
  Cell[14825, 397, 312, 8, 29, "ControlSuggestions",
   CellTags->"ResizeImages"]},
 "RotateAndZoomIn3D"->{
  Cell[15140, 407, 678, 16, 29, "ControlSuggestions",
   CellTags->"RotateAndZoomIn3D"]},
 "DragLocators"->{
  Cell[15821, 425, 340, 11, 29, "ControlSuggestions",
   CellTags->"DragLocators"]},
 "CreateAndDeleteLocators"->{
  Cell[16164, 438, 637, 15, 29, "ControlSuggestions",
   CellTags->"CreateAndDeleteLocators"]},
 "SliderZoom"->{
  Cell[16804, 455, 844, 21, 29, "ControlSuggestions",
   CellTags->"SliderZoom"]},
 "GamepadControls"->{
  Cell[17651, 478, 304, 8, 29, "ControlSuggestions",
   CellTags->"GamepadControls"]},
 "AutomaticAnimation"->{
  Cell[17958, 488, 1464, 31, 29, "ControlSuggestions",
   CellTags->"AutomaticAnimation"]},
 "BookmarkAnimation"->{
  Cell[19425, 521, 908, 21, 29, "ControlSuggestions",
   CellTags->"BookmarkAnimation"]}
 }
*)
(*CellTagsIndex
CellTagsIndex->{
 {"ResizeImages", 22408, 633},
 {"RotateAndZoomIn3D", 22516, 636},
 {"DragLocators", 22625, 639},
 {"CreateAndDeleteLocators", 22740, 642},
 {"SliderZoom", 22853, 645},
 {"GamepadControls", 22958, 648},
 {"AutomaticAnimation", 23070, 651},
 {"BookmarkAnimation", 23186, 654}
 }
*)
(*NotebookFileOutline
Notebook[{
Cell[CellGroupData[{
Cell[1486, 35, 70, 0, 76, "DemoTitle"],
Cell[CellGroupData[{
Cell[1581, 39, 33, 0, 275, "InitializationSection"],
Cell[1617, 41, 4041, 111, 280, "Input",
 InitializationCell->True,
 CellID->428081845]
}, Open  ]],
Cell[CellGroupData[{
Cell[5695, 157, 29, 0, 243, "ManipulateSection"],
Cell[CellGroupData[{
Cell[5749, 161, 940, 24, 41, "Input"],
Cell[6692, 187, 3645, 73, 391, "Output",
 CellID->1955058437]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[10386, 266, 36, 0, 181, "ManipulateCaptionSection"],
Cell[10425, 268, 605, 9, 55, "ManipulateCaption"]
}, Open  ]],
Cell[CellGroupData[{
Cell[11067, 282, 28, 0, 179, "ThumbnailSection"],
Cell[11098, 284, 1242, 34, 230, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[12377, 323, 28, 0, 149, "SnapshotsSection"],
Cell[12408, 325, 1241, 34, 230, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[13686, 364, 26, 0, 357, "DetailsSection"],
Cell[13715, 366, 494, 8, 55, "DetailNotes",
 CellID->1523787809],
Cell[14212, 376, 329, 6, 39, "DetailNotes",
 CellID->1626041038],
Cell[14544, 384, 204, 6, 23, "DetailNotes",
 CellID->1343130830]
}, Open  ]],
Cell[CellGroupData[{
Cell[14785, 395, 37, 0, 131, "ControlSuggestionsSection"],
Cell[14825, 397, 312, 8, 29, "ControlSuggestions",
 CellTags->"ResizeImages"],
Cell[15140, 407, 678, 16, 29, "ControlSuggestions",
 CellTags->"RotateAndZoomIn3D"],
Cell[15821, 425, 340, 11, 29, "ControlSuggestions",
 CellTags->"DragLocators"],
Cell[16164, 438, 637, 15, 29, "ControlSuggestions",
 CellTags->"CreateAndDeleteLocators"],
Cell[16804, 455, 844, 21, 29, "ControlSuggestions",
 CellTags->"SliderZoom"],
Cell[17651, 478, 304, 8, 29, "ControlSuggestions",
 CellTags->"GamepadControls"],
Cell[17958, 488, 1464, 31, 29, "ControlSuggestions",
 CellTags->"AutomaticAnimation"],
Cell[19425, 521, 908, 21, 29, "ControlSuggestions",
 CellTags->"BookmarkAnimation"]
}, Open  ]],
Cell[CellGroupData[{
Cell[20370, 547, 30, 0, 165, "SearchTermsSection"],
Cell[20403, 549, 53, 1, 23, "SearchTerms",
 CellID->1771562424],
Cell[20459, 552, 53, 1, 23, "SearchTerms",
 CellID->1740548482],
Cell[20515, 555, 53, 1, 23, "SearchTerms",
 CellID->1026981659],
Cell[20571, 558, 52, 1, 23, "SearchTerms",
 CellID->726700763],
Cell[20626, 561, 51, 1, 23, "SearchTerms",
 CellID->14970670],
Cell[20680, 564, 58, 1, 23, "SearchTerms",
 CellID->1758405254],
Cell[20741, 567, 59, 1, 23, "SearchTerms",
 CellID->1069681446],
Cell[20803, 570, 60, 1, 23, "SearchTerms",
 CellID->1925164264],
Cell[20866, 573, 48, 1, 23, "SearchTerms",
 CellID->212228433],
Cell[20917, 576, 53, 1, 23, "SearchTerms",
 CellID->1412851291]
}, Open  ]],
Cell[CellGroupData[{
Cell[21007, 582, 31, 0, 149, "RelatedLinksSection"],
Cell[21041, 584, 255, 6, 23, "RelatedLinks",
 CellID->1809783138],
Cell[21299, 592, 326, 8, 23, "RelatedLinks",
 CellID->2128840472]
}, Open  ]],
Cell[CellGroupData[{
Cell[21662, 605, 25, 0, 149, "AuthorSection"],
Cell[21690, 607, 43, 0, 23, "Author"],
Cell[21736, 609, 171, 4, 23, "Author",
 CellID->1585153641]
}, Open  ]]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature swpYhlcbRIFVHBwYZ@81XxEY *)
