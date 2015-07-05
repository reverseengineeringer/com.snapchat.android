.class public Lcom/snapchat/videotranscoder/video/FragmentShader$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/videotranscoder/video/FragmentShader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field protected static final FILTER_GREYSCALE_DEFINITION:Ljava/lang/String; = "#define FILTER_GREYSCALE\n"

.field protected static final FILTER_INSTASNAP_DEFINITION:Ljava/lang/String; = "#define FILTER_INSTASNAP\n"

.field protected static final FILTER_MISS_ETIKATE_DEFINITION:Ljava/lang/String; = "#define FILTER_MISS_ETIKATE\n"

.field protected static final FILTER_NORMAL_DEFINITION:Ljava/lang/String; = "#define FILTER_NORMAL\n"

.field protected static final FILTER_SEPIA_DEFINITION:Ljava/lang/String; = "#define FILTER_SEPIA\n"

.field protected static final LEFT_FILTER_GREYSCALE_DEFINITION:Ljava/lang/String; = "#define LEFT_FILTER_GREYSCALE\n"

.field protected static final LEFT_FILTER_INSTASNAP_DEFINITION:Ljava/lang/String; = "#define LEFT_FILTER_INSTASNAP\n"

.field protected static final LEFT_FILTER_MISS_ETIKATE_DEFINITION:Ljava/lang/String; = "#define LEFT_FILTER_MISS_ETIKATE\n"

.field protected static final LEFT_FILTER_NORMAL_DEFINITION:Ljava/lang/String; = "#define LEFT_FILTER_NORMAL\n"

.field protected static final LEFT_FILTER_SEPIA_DEFINITION:Ljava/lang/String; = "#define LEFT_FILTER_SEPIA\n"

.field protected static final OVERLAY_ENABLED_DEFINITION:Ljava/lang/String; = "#define OVERLAY_ENABLED\n"

.field protected static final RIGHT_FILTER_GREYSCALE_DEFINITION:Ljava/lang/String; = "#define RIGHT_FILTER_GREYSCALE\n"

.field protected static final RIGHT_FILTER_INSTASNAP_DEFINITION:Ljava/lang/String; = "#define RIGHT_FILTER_INSTASNAP\n"

.field protected static final RIGHT_FILTER_MISS_ETIKATE_DEFINITION:Ljava/lang/String; = "#define RIGHT_FILTER_MISS_ETIKATE\n"

.field protected static final RIGHT_FILTER_NORMAL_DEFINITION:Ljava/lang/String; = "#define RIGHT_FILTER_NORMAL\n"

.field protected static final RIGHT_FILTER_SEPIA_DEFINITION:Ljava/lang/String; = "#define RIGHT_FILTER_SEPIA\n"

.field protected static final SPLIT_FILTER_ENABLED_DEFINITION:Ljava/lang/String; = "#define SPLIT_FILTER_ENABLED\n"


# instance fields
.field private mFilter:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

.field private mLeftFilter:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

.field private mOverlayEnabled:Z

.field private mRightFilter:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

.field private mSplitEnabled:Z

.field private final mTranscodingResources:Lcom/snapchat/videotranscoder/utils/TranscodingResources;


# direct methods
.method public constructor <init>(Lcom/snapchat/videotranscoder/utils/TranscodingResources;)V
    .locals 2
    .param p1    # Lcom/snapchat/videotranscoder/utils/TranscodingResources;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-boolean v1, p0, Lcom/snapchat/videotranscoder/video/FragmentShader$Builder;->mSplitEnabled:Z

    .line 54
    iput-boolean v1, p0, Lcom/snapchat/videotranscoder/video/FragmentShader$Builder;->mOverlayEnabled:Z

    .line 55
    iput-object v0, p0, Lcom/snapchat/videotranscoder/video/FragmentShader$Builder;->mFilter:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    .line 56
    iput-object v0, p0, Lcom/snapchat/videotranscoder/video/FragmentShader$Builder;->mLeftFilter:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    .line 57
    iput-object v0, p0, Lcom/snapchat/videotranscoder/video/FragmentShader$Builder;->mRightFilter:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    .line 60
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "transcodingResources is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    iput-object p1, p0, Lcom/snapchat/videotranscoder/video/FragmentShader$Builder;->mTranscodingResources:Lcom/snapchat/videotranscoder/utils/TranscodingResources;

    .line 63
    return-void
.end method

.method private getFilterPreprocessorDefinition()Ljava/lang/String;
    .locals 3

    .prologue
    .line 113
    sget-object v0, Lcom/snapchat/videotranscoder/video/FragmentShader$1;->$SwitchMap$com$snapchat$videotranscoder$video$FragmentShader$Filter:[I

    iget-object v1, p0, Lcom/snapchat/videotranscoder/video/FragmentShader$Builder;->mFilter:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 119
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unhandled filter type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/snapchat/videotranscoder/video/FragmentShader$Builder;->mFilter:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :pswitch_0
    const-string v0, "#define FILTER_NORMAL\n"

    .line 118
    :goto_0
    return-object v0

    .line 115
    :pswitch_1
    const-string v0, "#define FILTER_GREYSCALE\n"

    goto :goto_0

    .line 116
    :pswitch_2
    const-string v0, "#define FILTER_SEPIA\n"

    goto :goto_0

    .line 117
    :pswitch_3
    const-string v0, "#define FILTER_INSTASNAP\n"

    goto :goto_0

    .line 118
    :pswitch_4
    const-string v0, "#define FILTER_MISS_ETIKATE\n"

    goto :goto_0

    .line 113
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getLeftFilterPreprocessorDefinition()Ljava/lang/String;
    .locals 3

    .prologue
    .line 124
    sget-object v0, Lcom/snapchat/videotranscoder/video/FragmentShader$1;->$SwitchMap$com$snapchat$videotranscoder$video$FragmentShader$Filter:[I

    iget-object v1, p0, Lcom/snapchat/videotranscoder/video/FragmentShader$Builder;->mLeftFilter:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 130
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unhandled filter type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/snapchat/videotranscoder/video/FragmentShader$Builder;->mLeftFilter:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :pswitch_0
    const-string v0, "#define LEFT_FILTER_NORMAL\n"

    .line 129
    :goto_0
    return-object v0

    .line 126
    :pswitch_1
    const-string v0, "#define LEFT_FILTER_GREYSCALE\n"

    goto :goto_0

    .line 127
    :pswitch_2
    const-string v0, "#define LEFT_FILTER_SEPIA\n"

    goto :goto_0

    .line 128
    :pswitch_3
    const-string v0, "#define LEFT_FILTER_INSTASNAP\n"

    goto :goto_0

    .line 129
    :pswitch_4
    const-string v0, "#define LEFT_FILTER_MISS_ETIKATE\n"

    goto :goto_0

    .line 124
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getRightFilterPreprocessorDefinition()Ljava/lang/String;
    .locals 3

    .prologue
    .line 135
    sget-object v0, Lcom/snapchat/videotranscoder/video/FragmentShader$1;->$SwitchMap$com$snapchat$videotranscoder$video$FragmentShader$Filter:[I

    iget-object v1, p0, Lcom/snapchat/videotranscoder/video/FragmentShader$Builder;->mRightFilter:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 141
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unhandled filter type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/snapchat/videotranscoder/video/FragmentShader$Builder;->mRightFilter:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :pswitch_0
    const-string v0, "#define RIGHT_FILTER_NORMAL\n"

    .line 140
    :goto_0
    return-object v0

    .line 137
    :pswitch_1
    const-string v0, "#define RIGHT_FILTER_GREYSCALE\n"

    goto :goto_0

    .line 138
    :pswitch_2
    const-string v0, "#define RIGHT_FILTER_SEPIA\n"

    goto :goto_0

    .line 139
    :pswitch_3
    const-string v0, "#define RIGHT_FILTER_INSTASNAP\n"

    goto :goto_0

    .line 140
    :pswitch_4
    const-string v0, "#define RIGHT_FILTER_MISS_ETIKATE\n"

    goto :goto_0

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public build()Lcom/snapchat/videotranscoder/video/FragmentShader;
    .locals 3

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/snapchat/videotranscoder/video/FragmentShader$Builder;->mSplitEnabled:Z

    if-eqz v0, :cond_8

    .line 92
    iget-object v0, p0, Lcom/snapchat/videotranscoder/video/FragmentShader$Builder;->mFilter:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/snapchat/videotranscoder/task/SetupException;

    const-string v1, "setFilter called for split shader"

    invoke-direct {v0, v1}, Lcom/snapchat/videotranscoder/task/SetupException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/snapchat/videotranscoder/video/FragmentShader$Builder;->mLeftFilter:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    if-nez v0, :cond_1

    sget-object v0, Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;->NORMAL:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    iput-object v0, p0, Lcom/snapchat/videotranscoder/video/FragmentShader$Builder;->mLeftFilter:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/snapchat/videotranscoder/video/FragmentShader$Builder;->mRightFilter:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    if-nez v0, :cond_2

    sget-object v0, Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;->NORMAL:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    iput-object v0, p0, Lcom/snapchat/videotranscoder/video/FragmentShader$Builder;->mRightFilter:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    .line 101
    :cond_2
    :goto_0
    const-string v0, ""

    .line 102
    iget-boolean v1, p0, Lcom/snapchat/videotranscoder/video/FragmentShader$Builder;->mSplitEnabled:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#define SPLIT_FILTER_ENABLED\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    :cond_3
    iget-boolean v1, p0, Lcom/snapchat/videotranscoder/video/FragmentShader$Builder;->mOverlayEnabled:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#define OVERLAY_ENABLED\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    :cond_4
    iget-object v1, p0, Lcom/snapchat/videotranscoder/video/FragmentShader$Builder;->mFilter:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/snapchat/videotranscoder/video/FragmentShader$Builder;->getFilterPreprocessorDefinition()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    :cond_5
    iget-object v1, p0, Lcom/snapchat/videotranscoder/video/FragmentShader$Builder;->mLeftFilter:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/snapchat/videotranscoder/video/FragmentShader$Builder;->getLeftFilterPreprocessorDefinition()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    :cond_6
    iget-object v1, p0, Lcom/snapchat/videotranscoder/video/FragmentShader$Builder;->mRightFilter:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/snapchat/videotranscoder/video/FragmentShader$Builder;->getRightFilterPreprocessorDefinition()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/videotranscoder/video/FragmentShader$Builder;->mTranscodingResources:Lcom/snapchat/videotranscoder/utils/TranscodingResources;

    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/utils/TranscodingResources;->loadFragmentShader()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    new-instance v1, Lcom/snapchat/videotranscoder/video/FragmentShader;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/snapchat/videotranscoder/video/FragmentShader;-><init>(Ljava/lang/String;Lcom/snapchat/videotranscoder/video/FragmentShader$1;)V

    return-object v1

    .line 96
    :cond_8
    iget-object v0, p0, Lcom/snapchat/videotranscoder/video/FragmentShader$Builder;->mLeftFilter:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    if-eqz v0, :cond_9

    new-instance v0, Lcom/snapchat/videotranscoder/task/SetupException;

    const-string v1, "Left filter defined for non-split shader"

    invoke-direct {v0, v1}, Lcom/snapchat/videotranscoder/task/SetupException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_9
    iget-object v0, p0, Lcom/snapchat/videotranscoder/video/FragmentShader$Builder;->mRightFilter:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    if-eqz v0, :cond_a

    new-instance v0, Lcom/snapchat/videotranscoder/task/SetupException;

    const-string v1, "Right filter defined for non-split shader"

    invoke-direct {v0, v1}, Lcom/snapchat/videotranscoder/task/SetupException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_a
    iget-object v0, p0, Lcom/snapchat/videotranscoder/video/FragmentShader$Builder;->mFilter:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    if-nez v0, :cond_2

    sget-object v0, Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;->NORMAL:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    iput-object v0, p0, Lcom/snapchat/videotranscoder/video/FragmentShader$Builder;->mFilter:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    goto/16 :goto_0
.end method

.method public enableOverlay(Z)Lcom/snapchat/videotranscoder/video/FragmentShader$Builder;
    .locals 0

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/snapchat/videotranscoder/video/FragmentShader$Builder;->mOverlayEnabled:Z

    .line 72
    return-object p0
.end method

.method public enableSplit(Z)Lcom/snapchat/videotranscoder/video/FragmentShader$Builder;
    .locals 0

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/snapchat/videotranscoder/video/FragmentShader$Builder;->mSplitEnabled:Z

    .line 67
    return-object p0
.end method

.method public setFilter(Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;)Lcom/snapchat/videotranscoder/video/FragmentShader$Builder;
    .locals 0
    .param p1    # Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 76
    iput-object p1, p0, Lcom/snapchat/videotranscoder/video/FragmentShader$Builder;->mFilter:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    .line 77
    return-object p0
.end method

.method public setLeftFilter(Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;)Lcom/snapchat/videotranscoder/video/FragmentShader$Builder;
    .locals 0
    .param p1    # Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 81
    iput-object p1, p0, Lcom/snapchat/videotranscoder/video/FragmentShader$Builder;->mLeftFilter:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    .line 82
    return-object p0
.end method

.method public setRightFilter(Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;)Lcom/snapchat/videotranscoder/video/FragmentShader$Builder;
    .locals 0
    .param p1    # Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 86
    iput-object p1, p0, Lcom/snapchat/videotranscoder/video/FragmentShader$Builder;->mRightFilter:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    .line 87
    return-object p0
.end method
