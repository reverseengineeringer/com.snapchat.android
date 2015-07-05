.class public final Lbaz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mId:Ljava/lang/String;
    .annotation build Lcgc;
    .end annotation
.end field

.field public final mMessageId:Ljava/lang/String;

.field public final mScrollToBottom:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 13
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lbaz;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lbaz;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 22
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lbaz;->mId:Ljava/lang/String;

    .line 26
    iput-boolean p3, p0, Lbaz;->mScrollToBottom:Z

    .line 27
    iput-object p2, p0, Lbaz;->mMessageId:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lbaz;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 18
    return-void
.end method
