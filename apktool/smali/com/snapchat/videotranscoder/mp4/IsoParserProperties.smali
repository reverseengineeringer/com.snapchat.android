.class public Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;
.super Ljava/util/Properties;
.source "SourceFile"


# static fields
.field private static mInstance:Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/util/Properties;-><init>()V

    .line 28
    invoke-direct {p0}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setDefaultProperties()V

    .line 29
    invoke-direct {p0}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setCustomProperties()V

    .line 30
    return-void
.end method

.method public static getInstance()Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->mInstance:Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;

    invoke-direct {v0}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;-><init>()V

    sput-object v0, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->mInstance:Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;

    .line 21
    :cond_0
    sget-object v0, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->mInstance:Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;

    return-object v0
.end method

.method private setCustomProperties()V
    .locals 2

    .prologue
    .line 256
    const-string v0, "smet"

    const-string v1, "com.snapchat.videotranscoder.mp4.SnapMetadataBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 257
    const-string v0, "sseg"

    const-string v1, "com.snapchat.videotranscoder.mp4.SnapSegmentsBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 258
    return-void
.end method

.method private setDefaultProperties()V
    .locals 2

    .prologue
    .line 36
    const-string v0, "hint"

    const-string v1, "com.coremedia.iso.boxes.TrackReferenceTypeBox(type)"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    const-string v0, "cdsc"

    const-string v1, "com.coremedia.iso.boxes.TrackReferenceTypeBox(type)"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    const-string v0, "meta-ilst"

    const-string v1, "com.coremedia.iso.boxes.apple.AppleItemListBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 39
    const-string v0, "rmra"

    const-string v1, "com.coremedia.iso.boxes.apple.AppleReferenceMovieBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 40
    const-string v0, "rmda"

    const-string v1, "com.coremedia.iso.boxes.apple.AppleReferenceMovieDescriptorBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 41
    const-string v0, "rmdr"

    const-string v1, "com.coremedia.iso.boxes.apple.AppleDataRateBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 42
    const-string v0, "rdrf"

    const-string v1, "com.coremedia.iso.boxes.apple.AppleDataReferenceBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    const-string v0, "wave"

    const-string v1, "com.coremedia.iso.boxes.apple.AppleWaveBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    const-string v0, "udta-ccid"

    const-string v1, "com.coremedia.iso.boxes.odf.OmaDrmContentIdBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 47
    const-string v0, "udta-yrrc"

    const-string v1, "com.coremedia.iso.boxes.RecordingYearBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 48
    const-string v0, "udta-titl"

    const-string v1, "com.coremedia.iso.boxes.TitleBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 49
    const-string v0, "udta-dscp"

    const-string v1, "com.coremedia.iso.boxes.DescriptionBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 50
    const-string v0, "udta-icnu"

    const-string v1, "com.coremedia.iso.boxes.odf.OmaDrmIconUriBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 51
    const-string v0, "udta-infu"

    const-string v1, "com.coremedia.iso.boxes.odf.OmaDrmInfoUrlBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 52
    const-string v0, "udta-albm"

    const-string v1, "com.coremedia.iso.boxes.AlbumBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    const-string v0, "udta-cprt"

    const-string v1, "com.coremedia.iso.boxes.CopyrightBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 54
    const-string v0, "udta-gnre"

    const-string v1, "com.coremedia.iso.boxes.GenreBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 55
    const-string v0, "udta-perf"

    const-string v1, "com.coremedia.iso.boxes.PerformerBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 56
    const-string v0, "udta-auth"

    const-string v1, "com.coremedia.iso.boxes.AuthorBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 57
    const-string v0, "udta-kywd"

    const-string v1, "com.coremedia.iso.boxes.KeywordsBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 58
    const-string v0, "udta-loci"

    const-string v1, "com.coremedia.iso.boxes.threegpp26244.LocationInformationBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 59
    const-string v0, "udta-rtng"

    const-string v1, "com.coremedia.iso.boxes.RatingBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 60
    const-string v0, "udta-clsf"

    const-string v1, "com.coremedia.iso.boxes.ClassificationBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    const-string v0, "udta-cdis"

    const-string v1, "com.coremedia.iso.boxes.vodafone.ContentDistributorIdBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 62
    const-string v0, "udta-albr"

    const-string v1, "com.coremedia.iso.boxes.vodafone.AlbumArtistBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 63
    const-string v0, "udta-cvru"

    const-string v1, "com.coremedia.iso.boxes.odf.OmaDrmCoverUriBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 64
    const-string v0, "udta-lrcu"

    const-string v1, "com.coremedia.iso.boxes.odf.OmaDrmLyricsUriBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 66
    const-string v0, "tx3g"

    const-string v1, "com.coremedia.iso.boxes.sampleentry.TextSampleEntry"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 67
    const-string v0, "stsd-text"

    const-string v1, "com.googlecode.mp4parser.boxes.apple.QuicktimeTextSampleEntry"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 68
    const-string v0, "enct"

    const-string v1, "com.coremedia.iso.boxes.sampleentry.TextSampleEntry(type)"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 69
    const-string v0, "samr"

    const-string v1, "com.coremedia.iso.boxes.sampleentry.AudioSampleEntry(type)"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 70
    const-string v0, "sawb"

    const-string v1, "com.coremedia.iso.boxes.sampleentry.AudioSampleEntry(type)"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 71
    const-string v0, "mp4a"

    const-string v1, "com.coremedia.iso.boxes.sampleentry.AudioSampleEntry(type)"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 72
    const-string v0, "drms"

    const-string v1, "com.coremedia.iso.boxes.sampleentry.AudioSampleEntry(type)"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 73
    const-string v0, "stsd-alac"

    const-string v1, "com.coremedia.iso.boxes.sampleentry.AudioSampleEntry(type)"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 74
    const-string v0, "mp4s"

    const-string v1, "com.coremedia.iso.boxes.sampleentry.MpegSampleEntry(type)"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 75
    const-string v0, "owma"

    const-string v1, "com.coremedia.iso.boxes.sampleentry.AudioSampleEntry(type)"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 76
    const-string v0, "ac-3"

    const-string v1, "com.coremedia.iso.boxes.sampleentry.AudioSampleEntry(type)"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 77
    const-string v0, "dac3"

    const-string v1, "com.googlecode.mp4parser.boxes.AC3SpecificBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 78
    const-string v0, "ec-3"

    const-string v1, "com.coremedia.iso.boxes.sampleentry.AudioSampleEntry(type)"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 79
    const-string v0, "dec3"

    const-string v1, "com.googlecode.mp4parser.boxes.EC3SpecificBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 80
    const-string v0, "stsd-lpcm"

    const-string v1, "com.coremedia.iso.boxes.sampleentry.AudioSampleEntry(type)"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    const-string v0, "stsd-dtsc"

    const-string v1, "com.coremedia.iso.boxes.sampleentry.AudioSampleEntry(type)"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 82
    const-string v0, "stsd-dtsh"

    const-string v1, "com.coremedia.iso.boxes.sampleentry.AudioSampleEntry(type)"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 83
    const-string v0, "stsd-dtsl"

    const-string v1, "com.coremedia.iso.boxes.sampleentry.AudioSampleEntry(type)"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 84
    const-string v0, "ddts"

    const-string v1, "com.googlecode.mp4parser.boxes.DTSSpecificBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 85
    const-string v0, "stsd-dtse"

    const-string v1, "com.coremedia.iso.boxes.sampleentry.AudioSampleEntry(type)"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 86
    const-string v0, "stsd-mlpa"

    const-string v1, "com.coremedia.iso.boxes.sampleentry.AudioSampleEntry(type)"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 87
    const-string v0, "dmlp"

    const-string v1, "com.googlecode.mp4parser.boxes.MLPSpecificBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 88
    const-string v0, "enca"

    const-string v1, "com.coremedia.iso.boxes.sampleentry.AudioSampleEntry(type)"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 89
    const-string v0, "encv"

    const-string v1, "com.coremedia.iso.boxes.sampleentry.VisualSampleEntry(type)"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 90
    const-string v0, "mp4v"

    const-string v1, "com.coremedia.iso.boxes.sampleentry.VisualSampleEntry(type)"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 91
    const-string v0, "s263"

    const-string v1, "com.coremedia.iso.boxes.sampleentry.VisualSampleEntry(type)"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 92
    const-string v0, "avc1"

    const-string v1, "com.coremedia.iso.boxes.sampleentry.VisualSampleEntry(type)"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 93
    const-string v0, "avc3"

    const-string v1, "com.coremedia.iso.boxes.sampleentry.VisualSampleEntry(type)"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 94
    const-string v0, "hev1"

    const-string v1, "com.coremedia.iso.boxes.sampleentry.VisualSampleEntry(type)"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 95
    const-string v0, "hvc1"

    const-string v1, "com.coremedia.iso.boxes.sampleentry.VisualSampleEntry(type)"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 96
    const-string v0, "ovc1"

    const-string v1, "com.coremedia.iso.boxes.sampleentry.Ovc1VisualSampleEntryImpl"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 97
    const-string v0, "stpp"

    const-string v1, "com.mp4parser.iso14496.part30.XMLSubtitleSampleEntry"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 98
    const-string v0, "avcC"

    const-string v1, "com.mp4parser.iso14496.part15.AvcConfigurationBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 99
    const-string v0, "hvcC"

    const-string v1, "com.mp4parser.iso14496.part15.HevcConfigurationBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 100
    const-string v0, "alac"

    const-string v1, "com.coremedia.iso.boxes.apple.AppleLosslessSpecificBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 101
    const-string v0, "btrt"

    const-string v1, "com.mp4parser.iso14496.part12.BitRateBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 102
    const-string v0, "ftyp"

    const-string v1, "com.coremedia.iso.boxes.FileTypeBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 103
    const-string v0, "mdat"

    const-string v1, "com.coremedia.iso.boxes.mdat.MediaDataBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 104
    const-string v0, "moov"

    const-string v1, "com.coremedia.iso.boxes.MovieBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 105
    const-string v0, "mvhd"

    const-string v1, "com.coremedia.iso.boxes.MovieHeaderBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 106
    const-string v0, "trak"

    const-string v1, "com.coremedia.iso.boxes.TrackBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 107
    const-string v0, "tkhd"

    const-string v1, "com.coremedia.iso.boxes.TrackHeaderBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 108
    const-string v0, "edts"

    const-string v1, "com.coremedia.iso.boxes.EditBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 109
    const-string v0, "elst"

    const-string v1, "com.coremedia.iso.boxes.EditListBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 110
    const-string v0, "mdia"

    const-string v1, "com.coremedia.iso.boxes.MediaBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 111
    const-string v0, "mdhd"

    const-string v1, "com.coremedia.iso.boxes.MediaHeaderBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 112
    const-string v0, "hdlr"

    const-string v1, "com.coremedia.iso.boxes.HandlerBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 113
    const-string v0, "minf"

    const-string v1, "com.coremedia.iso.boxes.MediaInformationBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 114
    const-string v0, "vmhd"

    const-string v1, "com.coremedia.iso.boxes.VideoMediaHeaderBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 115
    const-string v0, "smhd"

    const-string v1, "com.coremedia.iso.boxes.SoundMediaHeaderBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 116
    const-string v0, "sthd"

    const-string v1, "com.coremedia.iso.boxes.SubtitleMediaHeaderBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 117
    const-string v0, "hmhd"

    const-string v1, "com.coremedia.iso.boxes.HintMediaHeaderBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 118
    const-string v0, "dinf"

    const-string v1, "com.coremedia.iso.boxes.DataInformationBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 119
    const-string v0, "dref"

    const-string v1, "com.coremedia.iso.boxes.DataReferenceBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 120
    const-string v0, "url "

    const-string v1, "com.coremedia.iso.boxes.DataEntryUrlBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 121
    const-string v0, "urn "

    const-string v1, "com.coremedia.iso.boxes.DataEntryUrnBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 122
    const-string v0, "stbl"

    const-string v1, "com.coremedia.iso.boxes.SampleTableBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 123
    const-string v0, "ctts"

    const-string v1, "com.coremedia.iso.boxes.CompositionTimeToSample"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 124
    const-string v0, "stsd"

    const-string v1, "com.coremedia.iso.boxes.SampleDescriptionBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 125
    const-string v0, "stts"

    const-string v1, "com.coremedia.iso.boxes.TimeToSampleBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 126
    const-string v0, "stss"

    const-string v1, "com.coremedia.iso.boxes.SyncSampleBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 127
    const-string v0, "stsc"

    const-string v1, "com.coremedia.iso.boxes.SampleToChunkBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 128
    const-string v0, "stsz"

    const-string v1, "com.coremedia.iso.boxes.SampleSizeBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 129
    const-string v0, "stco"

    const-string v1, "com.coremedia.iso.boxes.StaticChunkOffsetBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 130
    const-string v0, "subs"

    const-string v1, "com.coremedia.iso.boxes.SubSampleInformationBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 131
    const-string v0, "udta"

    const-string v1, "com.coremedia.iso.boxes.UserDataBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 132
    const-string v0, "skip"

    const-string v1, "com.coremedia.iso.boxes.FreeSpaceBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 133
    const-string v0, "tref"

    const-string v1, "com.coremedia.iso.boxes.TrackReferenceBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 134
    const-string v0, "iloc"

    const-string v1, "com.coremedia.iso.boxes.ItemLocationBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 135
    const-string v0, "idat"

    const-string v1, "com.coremedia.iso.boxes.ItemDataBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 137
    const-string v0, "damr"

    const-string v1, "com.coremedia.iso.boxes.sampleentry.AmrSpecificBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 138
    const-string v0, "meta"

    const-string v1, "com.coremedia.iso.boxes.MetaBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 139
    const-string v0, "ipro"

    const-string v1, "com.coremedia.iso.boxes.ItemProtectionBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 140
    const-string v0, "sinf"

    const-string v1, "com.coremedia.iso.boxes.ProtectionSchemeInformationBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 141
    const-string v0, "frma"

    const-string v1, "com.coremedia.iso.boxes.OriginalFormatBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 142
    const-string v0, "schi"

    const-string v1, "com.coremedia.iso.boxes.SchemeInformationBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 143
    const-string v0, "odkm"

    const-string v1, "com.coremedia.iso.boxes.odf.OmaDrmKeyManagenentSystemBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 144
    const-string v0, "odaf"

    const-string v1, "com.coremedia.iso.boxes.OmaDrmAccessUnitFormatBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 145
    const-string v0, "schm"

    const-string v1, "com.coremedia.iso.boxes.SchemeTypeBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 146
    const-string v0, "uuid"

    const-string v1, "com.coremedia.iso.boxes.UserBox(userType)"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 147
    const-string v0, "free"

    const-string v1, "com.coremedia.iso.boxes.FreeBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 148
    const-string v0, "styp"

    const-string v1, "com.coremedia.iso.boxes.fragment.SegmentTypeBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 149
    const-string v0, "mvex"

    const-string v1, "com.coremedia.iso.boxes.fragment.MovieExtendsBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 150
    const-string v0, "mehd"

    const-string v1, "com.coremedia.iso.boxes.fragment.MovieExtendsHeaderBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 151
    const-string v0, "trex"

    const-string v1, "com.coremedia.iso.boxes.fragment.TrackExtendsBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 153
    const-string v0, "moof"

    const-string v1, "com.coremedia.iso.boxes.fragment.MovieFragmentBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 154
    const-string v0, "mfhd"

    const-string v1, "com.coremedia.iso.boxes.fragment.MovieFragmentHeaderBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 155
    const-string v0, "traf"

    const-string v1, "com.coremedia.iso.boxes.fragment.TrackFragmentBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 156
    const-string v0, "tfhd"

    const-string v1, "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 157
    const-string v0, "trun"

    const-string v1, "com.coremedia.iso.boxes.fragment.TrackRunBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 158
    const-string v0, "sdtp"

    const-string v1, "com.coremedia.iso.boxes.SampleDependencyTypeBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 159
    const-string v0, "mfra"

    const-string v1, "com.coremedia.iso.boxes.fragment.MovieFragmentRandomAccessBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 160
    const-string v0, "tfra"

    const-string v1, "com.coremedia.iso.boxes.fragment.TrackFragmentRandomAccessBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 161
    const-string v0, "mfro"

    const-string v1, "com.coremedia.iso.boxes.fragment.MovieFragmentRandomAccessOffsetBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 162
    const-string v0, "tfdt"

    const-string v1, "com.coremedia.iso.boxes.fragment.TrackFragmentBaseMediaDecodeTimeBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 163
    const-string v0, "nmhd"

    const-string v1, "com.coremedia.iso.boxes.NullMediaHeaderBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 164
    const-string v0, "gmhd"

    const-string v1, "com.googlecode.mp4parser.boxes.apple.GenericMediaHeaderAtom"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 165
    const-string v0, "gmhd-text"

    const-string v1, "com.googlecode.mp4parser.boxes.apple.GenericMediaHeaderTextAtom"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 166
    const-string v0, "gmin"

    const-string v1, "com.googlecode.mp4parser.boxes.apple.BaseMediaInfoAtom"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 167
    const-string v0, "cslg"

    const-string v1, "com.coremedia.iso.boxes.CompositionShiftLeastGreatestAtom"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 168
    const-string v0, "pdin"

    const-string v1, "com.coremedia.iso.boxes.ProgressiveDownloadInformationBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 169
    const-string v0, "bloc"

    const-string v1, "com.googlecode.mp4parser.boxes.dece.BaseLocationBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 170
    const-string v0, "ftab"

    const-string v1, "com.googlecode.mp4parser.boxes.threegpp26245.FontTableBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 171
    const-string v0, "co64"

    const-string v1, "com.coremedia.iso.boxes.ChunkOffset64BitBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 172
    const-string v0, "xml "

    const-string v1, "com.coremedia.iso.boxes.XmlBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 173
    const-string v0, "avcn"

    const-string v1, "com.googlecode.mp4parser.boxes.basemediaformat.AvcNalUnitStorageBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 174
    const-string v0, "ainf"

    const-string v1, "com.googlecode.mp4parser.boxes.dece.AssetInformationBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 175
    const-string v0, "pssh"

    const-string v1, "com.mp4parser.iso23001.part7.ProtectionSystemSpecificHeaderBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 176
    const-string v0, "trik"

    const-string v1, "com.coremedia.iso.boxes.dece.TrickPlayBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 177
    const-string v0, "uuid[A2394F525A9B4F14A2446C427C648DF4]"

    const-string v1, "com.googlecode.mp4parser.boxes.piff.PiffSampleEncryptionBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 178
    const-string v0, "uuid[8974DBCE7BE74C5184F97148F9882554]"

    const-string v1, "com.googlecode.mp4parser.boxes.piff.PiffTrackEncryptionBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 179
    const-string v0, "uuid[D4807EF2CA3946958E5426CB9E46A79F]"

    const-string v1, "com.googlecode.mp4parser.boxes.piff.TfrfBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 180
    const-string v0, "uuid[6D1D9B0542D544E680E2141DAFF757B2]"

    const-string v1, "com.googlecode.mp4parser.boxes.piff.TfxdBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 181
    const-string v0, "uuid[D08A4F1810F34A82B6C832D8ABA183D3]"

    const-string v1, "com.googlecode.mp4parser.boxes.piff.UuidBasedProtectionSystemSpecificHeaderBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 182
    const-string v0, "senc"

    const-string v1, "com.googlecode.mp4parser.boxes.dece.SampleEncryptionBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 183
    const-string v0, "tenc"

    const-string v1, "com.mp4parser.iso23001.part7.TrackEncryptionBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 184
    const-string v0, "amf0"

    const-string v1, "com.googlecode.mp4parser.boxes.adobe.ActionMessageFormat0SampleEntryBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 186
    const-string v0, "esds"

    const-string v1, "com.googlecode.mp4parser.boxes.mp4.ESDescriptorBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 188
    const-string v0, "tmcd"

    const-string v1, "com.googlecode.mp4parser.boxes.apple.TimeCodeBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 189
    const-string v0, "sidx"

    const-string v1, "com.googlecode.mp4parser.boxes.threegpp26244.SegmentIndexBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 191
    const-string v0, "sbgp"

    const-string v1, "com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleToGroupBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 192
    const-string v0, "sgpd"

    const-string v1, "com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleGroupDescriptionBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 194
    const-string v0, "tapt"

    const-string v1, "com.googlecode.mp4parser.boxes.apple.TrackApertureModeDimensionAtom"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 195
    const-string v0, "clef"

    const-string v1, "com.googlecode.mp4parser.boxes.apple.CleanApertureAtom"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 196
    const-string v0, "prof"

    const-string v1, "com.googlecode.mp4parser.boxes.apple.TrackProductionApertureDimensionsAtom"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 197
    const-string v0, "enof"

    const-string v1, "com.googlecode.mp4parser.boxes.apple.TrackEncodedPixelsDimensionsAtom"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 198
    const-string v0, "pasp"

    const-string v1, "com.googlecode.mp4parser.boxes.apple.PixelAspectRationAtom"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 199
    const-string v0, "load"

    const-string v1, "com.googlecode.mp4parser.boxes.apple.TrackLoadSettingsAtom"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 201
    const-string v0, "default"

    const-string v1, "com.coremedia.iso.boxes.UnknownBox(type)"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 203
    const-string v0, "\u00a9nam"

    const-string v1, "com.googlecode.mp4parser.boxes.apple.AppleNameBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 204
    const-string v0, "\u00a9ART"

    const-string v1, "com.googlecode.mp4parser.boxes.apple.AppleArtistBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 205
    const-string v0, "aART"

    const-string v1, "com.googlecode.mp4parser.boxes.apple.AppleArtist2Box"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 206
    const-string v0, "\u00a9alb"

    const-string v1, "com.googlecode.mp4parser.boxes.apple.AppleAlbumBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 207
    const-string v0, "\u00a9gen"

    const-string v1, "com.googlecode.mp4parser.boxes.apple.AppleGenreBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 208
    const-string v0, "gnre"

    const-string v1, "com.googlecode.mp4parser.boxes.apple.AppleGenreIDBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 209
    const-string v0, "\u00a9day"

    const-string v1, "com.googlecode.mp4parser.boxes.apple.AppleRecordingYear2Box"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 210
    const-string v0, "trkn"

    const-string v1, "com.googlecode.mp4parser.boxes.apple.AppleTrackNumberBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 211
    const-string v0, "cpil"

    const-string v1, "com.googlecode.mp4parser.boxes.apple.AppleCompilationBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 212
    const-string v0, "pgap"

    const-string v1, "com.googlecode.mp4parser.boxes.apple.AppleGaplessPlaybackBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 213
    const-string v0, "disk"

    const-string v1, "com.googlecode.mp4parser.boxes.apple.AppleDiskNumberBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 214
    const-string v0, "apID"

    const-string v1, "com.googlecode.mp4parser.boxes.apple.AppleAppleIdBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 215
    const-string v0, "cprt"

    const-string v1, "com.googlecode.mp4parser.boxes.apple.AppleCopyrightBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 216
    const-string v0, "atID"

    const-string v1, "com.googlecode.mp4parser.boxes.apple.Apple_atIDBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 217
    const-string v0, "geID"

    const-string v1, "com.googlecode.mp4parser.boxes.apple.Apple_geIDBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 218
    const-string v0, "sfID"

    const-string v1, "com.googlecode.mp4parser.boxes.apple.AppleCountryTypeBoxBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 219
    const-string v0, "desc"

    const-string v1, "com.googlecode.mp4parser.boxes.apple.AppleDescriptionBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 220
    const-string v0, "tvnn"

    const-string v1, "com.googlecode.mp4parser.boxes.apple.AppleTVNetworkBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 221
    const-string v0, "tvsh"

    const-string v1, "com.googlecode.mp4parser.boxes.apple.AppleTVShowBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 222
    const-string v0, "tven"

    const-string v1, "com.googlecode.mp4parser.boxes.apple.AppleTVEpisodeNumberBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 223
    const-string v0, "tvsn"

    const-string v1, "com.googlecode.mp4parser.boxes.apple.AppleTVSeasonBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 224
    const-string v0, "tves"

    const-string v1, "com.googlecode.mp4parser.boxes.apple.AppleTVEpisodeBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 225
    const-string v0, "xid "

    const-string v1, "com.googlecode.mp4parser.boxes.apple.Apple_xid_Box"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 226
    const-string v0, "flvr"

    const-string v1, "com.googlecode.mp4parser.boxes.apple.Apple_flvr_Box"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 227
    const-string v0, "sdes"

    const-string v1, "com.googlecode.mp4parser.boxes.apple.AppleShortDescriptionBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 228
    const-string v0, "ldes"

    const-string v1, "com.googlecode.mp4parser.boxes.apple.AppleLongDescriptionBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 229
    const-string v0, "soal"

    const-string v1, "com.googlecode.mp4parser.boxes.apple.AppleSortAlbumBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 230
    const-string v0, "purd"

    const-string v1, "com.googlecode.mp4parser.boxes.apple.ApplePurchaseDateBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 231
    const-string v0, "stik"

    const-string v1, "com.googlecode.mp4parser.boxes.apple.AppleMediaTypeBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 233
    const-string v0, "\u00a9cmt"

    const-string v1, "com.googlecode.mp4parser.boxes.apple.AppleCommentBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 234
    const-string v0, "tmpo"

    const-string v1, "com.googlecode.mp4parser.boxes.apple.AppleTempoBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 235
    const-string v0, "\u00a9too"

    const-string v1, "com.googlecode.mp4parser.boxes.apple.AppleEncoderBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 236
    const-string v0, "\u00a9wrt"

    const-string v1, "com.googlecode.mp4parser.boxes.apple.AppleTrackAuthorBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 237
    const-string v0, "\u00a9grp"

    const-string v1, "com.googlecode.mp4parser.boxes.apple.AppleGroupingBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 238
    const-string v0, " covr"

    const-string v1, "com.googlecode.mp4parser.boxes.apple.AppleCoverBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 239
    const-string v0, "\u00a9lyr"

    const-string v1, "com.googlecode.mp4parser.boxes.apple.AppleLyricsBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 240
    const-string v0, "cinf"

    const-string v1, "com.googlecode.mp4parser.boxes.dece.ContentInformationBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 241
    const-string v0, "tibr"

    const-string v1, "com.mp4parser.iso14496.part15.TierBitRateBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 242
    const-string v0, "tiri"

    const-string v1, "com.mp4parser.iso14496.part15.TierInfoBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 243
    const-string v0, "svpr"

    const-string v1, "com.mp4parser.iso14496.part15.PriotityRangeBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 244
    const-string v0, "emsg"

    const-string v1, "com.mp4parser.iso23009.part1.EventMessageBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 245
    const-string v0, "saio"

    const-string v1, "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationOffsetsBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 246
    const-string v0, "saiz"

    const-string v1, "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationSizesBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 247
    const-string v0, "vttC"

    const-string v1, "com.mp4parser.iso14496.part30.WebVTTConfigurationBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 248
    const-string v0, "vlab"

    const-string v1, "com.mp4parser.iso14496.part30.WebVTTSourceLabelBox"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 249
    const-string v0, "wvtt"

    const-string v1, "com.mp4parser.iso14496.part30.WebVTTSampleEntry"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 250
    return-void
.end method
