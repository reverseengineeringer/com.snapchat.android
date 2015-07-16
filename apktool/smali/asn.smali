.class public final Lasn;
.super Lasm;
.source "SourceFile"


# instance fields
.field public b:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;


# direct methods
.method public constructor <init>(Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lasm;-><init>()V

    .line 11
    iput-object p1, p0, Lasn;->b:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    .line 12
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lasn;->b:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcom/snapchat/android/ui/swipefilters/FilterPageType;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/snapchat/android/ui/swipefilters/FilterPageType;->BACKGROUNDFILTER:Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    return-object v0
.end method
