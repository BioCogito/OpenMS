### the directory name
set(directory source/APPLICATIONS/TOPP)

### list all filenames of the directory here
set(TOPP_executables
AdditiveSeries
BaselineFilter
CompNovo
CompNovoCID
ConsensusID
ConsensusMapNormalizer
Decharger
DTAExtractor
EICExtractor
FalseDiscoveryRate
FeatureFinderCentroided
FeatureFinderIdentification
FeatureFinderIsotopeWavelet
FeatureFinderMetabo
FeatureFinderMRM
FeatureFinderMultiplex
FeatureLinkerLabeled
FeatureLinkerUnlabeled
FeatureLinkerUnlabeledQT
FileConverter
FileFilter
FileInfo
FileMerger
GenericWrapper
HighResPrecursorMassCorrector
IDConflictResolver
IDFileConverter
IDFilter
IDMapper
IDMerger
IDPosteriorErrorProbability
IDRipper
IDRTCalibration
InclusionExclusionListCreator
InspectAdapter
InternalCalibration
IsobaricAnalyzer
ITRAQAnalyzer
MapAlignerIdentification
MapAlignerPoseClustering
MapAlignerSpectrum
MapNormalizer
MapRTTransformer
MapStatistics
MascotAdapter
MascotAdapterOnline
MassTraceExtractor
MRMMapper
MyriMatchAdapter
MzTabExporter
NoiseFilterGaussian
NoiseFilterSGolay
OMSSAAdapter
OpenSwathAnalyzer
OpenSwathChromatogramExtractor
OpenSwathConfidenceScoring
OpenSwathDecoyGenerator
OpenSwathFeatureXMLToTSV
OpenSwathRTNormalizer
PeakPickerHiRes
PeakPickerWavelet
PepNovoAdapter
PeptideIndexer
PhosphoScoring
PILISIdentification
PILISModelCV
PILISModelTrainer
PILISSpectraGenerator
PrecursorIonSelector
PrecursorMassCorrector
ProteinInference
ProteinQuantifier
ProteinResolver
PTModel
PTPredict
RTModel
RTPredict
SeedListGenerator
SpecLibSearcher
SpectraFilterBernNorm
SpectraFilterMarkerMower
SpectraFilterNLargest
SpectraFilterNormalizer
SpectraFilterParentPeakMower
SpectraFilterScaler
SpectraFilterSqrtMower
SpectraFilterThresholdMower
SpectraFilterWindowMower
SpectraMerger
TextExporter
TMTAnalyzer
TOFCalibration
XTandemAdapter
)

## all targets with need linkage against OpenMS_GUI.lib - they also need to appear in the list above)
set(TOPP_executables_with_GUIlib
ExecutePipeline
Resampler
)

### add filenames to Visual Studio solution tree
set(sources_VS)
foreach(i ${TOPP_executables} ${TOPP_executables_with_GUIlib})
	list(APPEND sources_VS "${i}.cpp")
endforeach(i)

source_group("" FILES ${sources_VS})
