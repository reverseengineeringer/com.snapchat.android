.class public Lcom/snapchat/videotranscoder/video/FragmentShader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/videotranscoder/video/FragmentShader$1;,
        Lcom/snapchat/videotranscoder/video/FragmentShader$Builder;,
        Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;
    }
.end annotation


# instance fields
.field private final mText:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-object p1, p0, Lcom/snapchat/videotranscoder/video/FragmentShader;->mText:Ljava/lang/String;

    .line 148
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/snapchat/videotranscoder/video/FragmentShader$1;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/snapchat/videotranscoder/video/FragmentShader;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/snapchat/videotranscoder/video/FragmentShader;->mText:Ljava/lang/String;

    return-object v0
.end method
