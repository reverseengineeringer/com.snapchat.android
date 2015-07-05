package com.snapchat.videotranscoder.mp4;

import java.util.Properties;

public class IsoParserProperties
  extends Properties
{
  private static IsoParserProperties mInstance;
  
  private IsoParserProperties()
  {
    setDefaultProperties();
    setCustomProperties();
  }
  
  public static IsoParserProperties getInstance()
  {
    if (mInstance == null) {
      mInstance = new IsoParserProperties();
    }
    return mInstance;
  }
  
  private void setCustomProperties()
  {
    setProperty("smet", "com.snapchat.videotranscoder.mp4.SnapMetadataBox");
    setProperty("sseg", "com.snapchat.videotranscoder.mp4.SnapSegmentsBox");
  }
  
  private void setDefaultProperties()
  {
    setProperty("hint", "com.coremedia.iso.boxes.TrackReferenceTypeBox(type)");
    setProperty("cdsc", "com.coremedia.iso.boxes.TrackReferenceTypeBox(type)");
    setProperty("meta-ilst", "com.coremedia.iso.boxes.apple.AppleItemListBox");
    setProperty("rmra", "com.coremedia.iso.boxes.apple.AppleReferenceMovieBox");
    setProperty("rmda", "com.coremedia.iso.boxes.apple.AppleReferenceMovieDescriptorBox");
    setProperty("rmdr", "com.coremedia.iso.boxes.apple.AppleDataRateBox");
    setProperty("rdrf", "com.coremedia.iso.boxes.apple.AppleDataReferenceBox");
    setProperty("wave", "com.coremedia.iso.boxes.apple.AppleWaveBox");
    setProperty("udta-ccid", "com.coremedia.iso.boxes.odf.OmaDrmContentIdBox");
    setProperty("udta-yrrc", "com.coremedia.iso.boxes.RecordingYearBox");
    setProperty("udta-titl", "com.coremedia.iso.boxes.TitleBox");
    setProperty("udta-dscp", "com.coremedia.iso.boxes.DescriptionBox");
    setProperty("udta-icnu", "com.coremedia.iso.boxes.odf.OmaDrmIconUriBox");
    setProperty("udta-infu", "com.coremedia.iso.boxes.odf.OmaDrmInfoUrlBox");
    setProperty("udta-albm", "com.coremedia.iso.boxes.AlbumBox");
    setProperty("udta-cprt", "com.coremedia.iso.boxes.CopyrightBox");
    setProperty("udta-gnre", "com.coremedia.iso.boxes.GenreBox");
    setProperty("udta-perf", "com.coremedia.iso.boxes.PerformerBox");
    setProperty("udta-auth", "com.coremedia.iso.boxes.AuthorBox");
    setProperty("udta-kywd", "com.coremedia.iso.boxes.KeywordsBox");
    setProperty("udta-loci", "com.coremedia.iso.boxes.threegpp26244.LocationInformationBox");
    setProperty("udta-rtng", "com.coremedia.iso.boxes.RatingBox");
    setProperty("udta-clsf", "com.coremedia.iso.boxes.ClassificationBox");
    setProperty("udta-cdis", "com.coremedia.iso.boxes.vodafone.ContentDistributorIdBox");
    setProperty("udta-albr", "com.coremedia.iso.boxes.vodafone.AlbumArtistBox");
    setProperty("udta-cvru", "com.coremedia.iso.boxes.odf.OmaDrmCoverUriBox");
    setProperty("udta-lrcu", "com.coremedia.iso.boxes.odf.OmaDrmLyricsUriBox");
    setProperty("tx3g", "com.coremedia.iso.boxes.sampleentry.TextSampleEntry");
    setProperty("stsd-text", "com.googlecode.mp4parser.boxes.apple.QuicktimeTextSampleEntry");
    setProperty("enct", "com.coremedia.iso.boxes.sampleentry.TextSampleEntry(type)");
    setProperty("samr", "com.coremedia.iso.boxes.sampleentry.AudioSampleEntry(type)");
    setProperty("sawb", "com.coremedia.iso.boxes.sampleentry.AudioSampleEntry(type)");
    setProperty("mp4a", "com.coremedia.iso.boxes.sampleentry.AudioSampleEntry(type)");
    setProperty("drms", "com.coremedia.iso.boxes.sampleentry.AudioSampleEntry(type)");
    setProperty("stsd-alac", "com.coremedia.iso.boxes.sampleentry.AudioSampleEntry(type)");
    setProperty("mp4s", "com.coremedia.iso.boxes.sampleentry.MpegSampleEntry(type)");
    setProperty("owma", "com.coremedia.iso.boxes.sampleentry.AudioSampleEntry(type)");
    setProperty("ac-3", "com.coremedia.iso.boxes.sampleentry.AudioSampleEntry(type)");
    setProperty("dac3", "com.googlecode.mp4parser.boxes.AC3SpecificBox");
    setProperty("ec-3", "com.coremedia.iso.boxes.sampleentry.AudioSampleEntry(type)");
    setProperty("dec3", "com.googlecode.mp4parser.boxes.EC3SpecificBox");
    setProperty("stsd-lpcm", "com.coremedia.iso.boxes.sampleentry.AudioSampleEntry(type)");
    setProperty("stsd-dtsc", "com.coremedia.iso.boxes.sampleentry.AudioSampleEntry(type)");
    setProperty("stsd-dtsh", "com.coremedia.iso.boxes.sampleentry.AudioSampleEntry(type)");
    setProperty("stsd-dtsl", "com.coremedia.iso.boxes.sampleentry.AudioSampleEntry(type)");
    setProperty("ddts", "com.googlecode.mp4parser.boxes.DTSSpecificBox");
    setProperty("stsd-dtse", "com.coremedia.iso.boxes.sampleentry.AudioSampleEntry(type)");
    setProperty("stsd-mlpa", "com.coremedia.iso.boxes.sampleentry.AudioSampleEntry(type)");
    setProperty("dmlp", "com.googlecode.mp4parser.boxes.MLPSpecificBox");
    setProperty("enca", "com.coremedia.iso.boxes.sampleentry.AudioSampleEntry(type)");
    setProperty("encv", "com.coremedia.iso.boxes.sampleentry.VisualSampleEntry(type)");
    setProperty("mp4v", "com.coremedia.iso.boxes.sampleentry.VisualSampleEntry(type)");
    setProperty("s263", "com.coremedia.iso.boxes.sampleentry.VisualSampleEntry(type)");
    setProperty("avc1", "com.coremedia.iso.boxes.sampleentry.VisualSampleEntry(type)");
    setProperty("avc3", "com.coremedia.iso.boxes.sampleentry.VisualSampleEntry(type)");
    setProperty("hev1", "com.coremedia.iso.boxes.sampleentry.VisualSampleEntry(type)");
    setProperty("hvc1", "com.coremedia.iso.boxes.sampleentry.VisualSampleEntry(type)");
    setProperty("ovc1", "com.coremedia.iso.boxes.sampleentry.Ovc1VisualSampleEntryImpl");
    setProperty("stpp", "com.mp4parser.iso14496.part30.XMLSubtitleSampleEntry");
    setProperty("avcC", "com.mp4parser.iso14496.part15.AvcConfigurationBox");
    setProperty("hvcC", "com.mp4parser.iso14496.part15.HevcConfigurationBox");
    setProperty("alac", "com.coremedia.iso.boxes.apple.AppleLosslessSpecificBox");
    setProperty("btrt", "com.mp4parser.iso14496.part12.BitRateBox");
    setProperty("ftyp", "com.coremedia.iso.boxes.FileTypeBox");
    setProperty("mdat", "com.coremedia.iso.boxes.mdat.MediaDataBox");
    setProperty("moov", "com.coremedia.iso.boxes.MovieBox");
    setProperty("mvhd", "com.coremedia.iso.boxes.MovieHeaderBox");
    setProperty("trak", "com.coremedia.iso.boxes.TrackBox");
    setProperty("tkhd", "com.coremedia.iso.boxes.TrackHeaderBox");
    setProperty("edts", "com.coremedia.iso.boxes.EditBox");
    setProperty("elst", "com.coremedia.iso.boxes.EditListBox");
    setProperty("mdia", "com.coremedia.iso.boxes.MediaBox");
    setProperty("mdhd", "com.coremedia.iso.boxes.MediaHeaderBox");
    setProperty("hdlr", "com.coremedia.iso.boxes.HandlerBox");
    setProperty("minf", "com.coremedia.iso.boxes.MediaInformationBox");
    setProperty("vmhd", "com.coremedia.iso.boxes.VideoMediaHeaderBox");
    setProperty("smhd", "com.coremedia.iso.boxes.SoundMediaHeaderBox");
    setProperty("sthd", "com.coremedia.iso.boxes.SubtitleMediaHeaderBox");
    setProperty("hmhd", "com.coremedia.iso.boxes.HintMediaHeaderBox");
    setProperty("dinf", "com.coremedia.iso.boxes.DataInformationBox");
    setProperty("dref", "com.coremedia.iso.boxes.DataReferenceBox");
    setProperty("url ", "com.coremedia.iso.boxes.DataEntryUrlBox");
    setProperty("urn ", "com.coremedia.iso.boxes.DataEntryUrnBox");
    setProperty("stbl", "com.coremedia.iso.boxes.SampleTableBox");
    setProperty("ctts", "com.coremedia.iso.boxes.CompositionTimeToSample");
    setProperty("stsd", "com.coremedia.iso.boxes.SampleDescriptionBox");
    setProperty("stts", "com.coremedia.iso.boxes.TimeToSampleBox");
    setProperty("stss", "com.coremedia.iso.boxes.SyncSampleBox");
    setProperty("stsc", "com.coremedia.iso.boxes.SampleToChunkBox");
    setProperty("stsz", "com.coremedia.iso.boxes.SampleSizeBox");
    setProperty("stco", "com.coremedia.iso.boxes.StaticChunkOffsetBox");
    setProperty("subs", "com.coremedia.iso.boxes.SubSampleInformationBox");
    setProperty("udta", "com.coremedia.iso.boxes.UserDataBox");
    setProperty("skip", "com.coremedia.iso.boxes.FreeSpaceBox");
    setProperty("tref", "com.coremedia.iso.boxes.TrackReferenceBox");
    setProperty("iloc", "com.coremedia.iso.boxes.ItemLocationBox");
    setProperty("idat", "com.coremedia.iso.boxes.ItemDataBox");
    setProperty("damr", "com.coremedia.iso.boxes.sampleentry.AmrSpecificBox");
    setProperty("meta", "com.coremedia.iso.boxes.MetaBox");
    setProperty("ipro", "com.coremedia.iso.boxes.ItemProtectionBox");
    setProperty("sinf", "com.coremedia.iso.boxes.ProtectionSchemeInformationBox");
    setProperty("frma", "com.coremedia.iso.boxes.OriginalFormatBox");
    setProperty("schi", "com.coremedia.iso.boxes.SchemeInformationBox");
    setProperty("odkm", "com.coremedia.iso.boxes.odf.OmaDrmKeyManagenentSystemBox");
    setProperty("odaf", "com.coremedia.iso.boxes.OmaDrmAccessUnitFormatBox");
    setProperty("schm", "com.coremedia.iso.boxes.SchemeTypeBox");
    setProperty("uuid", "com.coremedia.iso.boxes.UserBox(userType)");
    setProperty("free", "com.coremedia.iso.boxes.FreeBox");
    setProperty("styp", "com.coremedia.iso.boxes.fragment.SegmentTypeBox");
    setProperty("mvex", "com.coremedia.iso.boxes.fragment.MovieExtendsBox");
    setProperty("mehd", "com.coremedia.iso.boxes.fragment.MovieExtendsHeaderBox");
    setProperty("trex", "com.coremedia.iso.boxes.fragment.TrackExtendsBox");
    setProperty("moof", "com.coremedia.iso.boxes.fragment.MovieFragmentBox");
    setProperty("mfhd", "com.coremedia.iso.boxes.fragment.MovieFragmentHeaderBox");
    setProperty("traf", "com.coremedia.iso.boxes.fragment.TrackFragmentBox");
    setProperty("tfhd", "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox");
    setProperty("trun", "com.coremedia.iso.boxes.fragment.TrackRunBox");
    setProperty("sdtp", "com.coremedia.iso.boxes.SampleDependencyTypeBox");
    setProperty("mfra", "com.coremedia.iso.boxes.fragment.MovieFragmentRandomAccessBox");
    setProperty("tfra", "com.coremedia.iso.boxes.fragment.TrackFragmentRandomAccessBox");
    setProperty("mfro", "com.coremedia.iso.boxes.fragment.MovieFragmentRandomAccessOffsetBox");
    setProperty("tfdt", "com.coremedia.iso.boxes.fragment.TrackFragmentBaseMediaDecodeTimeBox");
    setProperty("nmhd", "com.coremedia.iso.boxes.NullMediaHeaderBox");
    setProperty("gmhd", "com.googlecode.mp4parser.boxes.apple.GenericMediaHeaderAtom");
    setProperty("gmhd-text", "com.googlecode.mp4parser.boxes.apple.GenericMediaHeaderTextAtom");
    setProperty("gmin", "com.googlecode.mp4parser.boxes.apple.BaseMediaInfoAtom");
    setProperty("cslg", "com.coremedia.iso.boxes.CompositionShiftLeastGreatestAtom");
    setProperty("pdin", "com.coremedia.iso.boxes.ProgressiveDownloadInformationBox");
    setProperty("bloc", "com.googlecode.mp4parser.boxes.dece.BaseLocationBox");
    setProperty("ftab", "com.googlecode.mp4parser.boxes.threegpp26245.FontTableBox");
    setProperty("co64", "com.coremedia.iso.boxes.ChunkOffset64BitBox");
    setProperty("xml ", "com.coremedia.iso.boxes.XmlBox");
    setProperty("avcn", "com.googlecode.mp4parser.boxes.basemediaformat.AvcNalUnitStorageBox");
    setProperty("ainf", "com.googlecode.mp4parser.boxes.dece.AssetInformationBox");
    setProperty("pssh", "com.mp4parser.iso23001.part7.ProtectionSystemSpecificHeaderBox");
    setProperty("trik", "com.coremedia.iso.boxes.dece.TrickPlayBox");
    setProperty("uuid[A2394F525A9B4F14A2446C427C648DF4]", "com.googlecode.mp4parser.boxes.piff.PiffSampleEncryptionBox");
    setProperty("uuid[8974DBCE7BE74C5184F97148F9882554]", "com.googlecode.mp4parser.boxes.piff.PiffTrackEncryptionBox");
    setProperty("uuid[D4807EF2CA3946958E5426CB9E46A79F]", "com.googlecode.mp4parser.boxes.piff.TfrfBox");
    setProperty("uuid[6D1D9B0542D544E680E2141DAFF757B2]", "com.googlecode.mp4parser.boxes.piff.TfxdBox");
    setProperty("uuid[D08A4F1810F34A82B6C832D8ABA183D3]", "com.googlecode.mp4parser.boxes.piff.UuidBasedProtectionSystemSpecificHeaderBox");
    setProperty("senc", "com.googlecode.mp4parser.boxes.dece.SampleEncryptionBox");
    setProperty("tenc", "com.mp4parser.iso23001.part7.TrackEncryptionBox");
    setProperty("amf0", "com.googlecode.mp4parser.boxes.adobe.ActionMessageFormat0SampleEntryBox");
    setProperty("esds", "com.googlecode.mp4parser.boxes.mp4.ESDescriptorBox");
    setProperty("tmcd", "com.googlecode.mp4parser.boxes.apple.TimeCodeBox");
    setProperty("sidx", "com.googlecode.mp4parser.boxes.threegpp26244.SegmentIndexBox");
    setProperty("sbgp", "com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleToGroupBox");
    setProperty("sgpd", "com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleGroupDescriptionBox");
    setProperty("tapt", "com.googlecode.mp4parser.boxes.apple.TrackApertureModeDimensionAtom");
    setProperty("clef", "com.googlecode.mp4parser.boxes.apple.CleanApertureAtom");
    setProperty("prof", "com.googlecode.mp4parser.boxes.apple.TrackProductionApertureDimensionsAtom");
    setProperty("enof", "com.googlecode.mp4parser.boxes.apple.TrackEncodedPixelsDimensionsAtom");
    setProperty("pasp", "com.googlecode.mp4parser.boxes.apple.PixelAspectRationAtom");
    setProperty("load", "com.googlecode.mp4parser.boxes.apple.TrackLoadSettingsAtom");
    setProperty("default", "com.coremedia.iso.boxes.UnknownBox(type)");
    setProperty("©nam", "com.googlecode.mp4parser.boxes.apple.AppleNameBox");
    setProperty("©ART", "com.googlecode.mp4parser.boxes.apple.AppleArtistBox");
    setProperty("aART", "com.googlecode.mp4parser.boxes.apple.AppleArtist2Box");
    setProperty("©alb", "com.googlecode.mp4parser.boxes.apple.AppleAlbumBox");
    setProperty("©gen", "com.googlecode.mp4parser.boxes.apple.AppleGenreBox");
    setProperty("gnre", "com.googlecode.mp4parser.boxes.apple.AppleGenreIDBox");
    setProperty("©day", "com.googlecode.mp4parser.boxes.apple.AppleRecordingYear2Box");
    setProperty("trkn", "com.googlecode.mp4parser.boxes.apple.AppleTrackNumberBox");
    setProperty("cpil", "com.googlecode.mp4parser.boxes.apple.AppleCompilationBox");
    setProperty("pgap", "com.googlecode.mp4parser.boxes.apple.AppleGaplessPlaybackBox");
    setProperty("disk", "com.googlecode.mp4parser.boxes.apple.AppleDiskNumberBox");
    setProperty("apID", "com.googlecode.mp4parser.boxes.apple.AppleAppleIdBox");
    setProperty("cprt", "com.googlecode.mp4parser.boxes.apple.AppleCopyrightBox");
    setProperty("atID", "com.googlecode.mp4parser.boxes.apple.Apple_atIDBox");
    setProperty("geID", "com.googlecode.mp4parser.boxes.apple.Apple_geIDBox");
    setProperty("sfID", "com.googlecode.mp4parser.boxes.apple.AppleCountryTypeBoxBox");
    setProperty("desc", "com.googlecode.mp4parser.boxes.apple.AppleDescriptionBox");
    setProperty("tvnn", "com.googlecode.mp4parser.boxes.apple.AppleTVNetworkBox");
    setProperty("tvsh", "com.googlecode.mp4parser.boxes.apple.AppleTVShowBox");
    setProperty("tven", "com.googlecode.mp4parser.boxes.apple.AppleTVEpisodeNumberBox");
    setProperty("tvsn", "com.googlecode.mp4parser.boxes.apple.AppleTVSeasonBox");
    setProperty("tves", "com.googlecode.mp4parser.boxes.apple.AppleTVEpisodeBox");
    setProperty("xid ", "com.googlecode.mp4parser.boxes.apple.Apple_xid_Box");
    setProperty("flvr", "com.googlecode.mp4parser.boxes.apple.Apple_flvr_Box");
    setProperty("sdes", "com.googlecode.mp4parser.boxes.apple.AppleShortDescriptionBox");
    setProperty("ldes", "com.googlecode.mp4parser.boxes.apple.AppleLongDescriptionBox");
    setProperty("soal", "com.googlecode.mp4parser.boxes.apple.AppleSortAlbumBox");
    setProperty("purd", "com.googlecode.mp4parser.boxes.apple.ApplePurchaseDateBox");
    setProperty("stik", "com.googlecode.mp4parser.boxes.apple.AppleMediaTypeBox");
    setProperty("©cmt", "com.googlecode.mp4parser.boxes.apple.AppleCommentBox");
    setProperty("tmpo", "com.googlecode.mp4parser.boxes.apple.AppleTempoBox");
    setProperty("©too", "com.googlecode.mp4parser.boxes.apple.AppleEncoderBox");
    setProperty("©wrt", "com.googlecode.mp4parser.boxes.apple.AppleTrackAuthorBox");
    setProperty("©grp", "com.googlecode.mp4parser.boxes.apple.AppleGroupingBox");
    setProperty(" covr", "com.googlecode.mp4parser.boxes.apple.AppleCoverBox");
    setProperty("©lyr", "com.googlecode.mp4parser.boxes.apple.AppleLyricsBox");
    setProperty("cinf", "com.googlecode.mp4parser.boxes.dece.ContentInformationBox");
    setProperty("tibr", "com.mp4parser.iso14496.part15.TierBitRateBox");
    setProperty("tiri", "com.mp4parser.iso14496.part15.TierInfoBox");
    setProperty("svpr", "com.mp4parser.iso14496.part15.PriotityRangeBox");
    setProperty("emsg", "com.mp4parser.iso23009.part1.EventMessageBox");
    setProperty("saio", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationOffsetsBox");
    setProperty("saiz", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationSizesBox");
    setProperty("vttC", "com.mp4parser.iso14496.part30.WebVTTConfigurationBox");
    setProperty("vlab", "com.mp4parser.iso14496.part30.WebVTTSourceLabelBox");
    setProperty("wvtt", "com.mp4parser.iso14496.part30.WebVTTSampleEntry");
  }
}

/* Location:
 * Qualified Name:     com.snapchat.videotranscoder.mp4.IsoParserProperties
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */