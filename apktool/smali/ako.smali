.class public final Lako;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lako$a;
    }
.end annotation


# instance fields
.field public mNumWithOnlyUnreadChats:I

.field public mNumWithOnlyUnviewedCash:I

.field public mNumWithUnviewedContent:I


# direct methods
.method private constructor <init>(Lako$a;)V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iget v0, p1, Lako$a;->numWithUnviewedContent:I

    iput v0, p0, Lako;->mNumWithUnviewedContent:I

    .line 18
    iget v0, p1, Lako$a;->numWithOnlyUnviewedChats:I

    iput v0, p0, Lako;->mNumWithOnlyUnreadChats:I

    .line 19
    iget v0, p1, Lako$a;->numWithOnlyUnviewedCash:I

    iput v0, p0, Lako;->mNumWithOnlyUnviewedCash:I

    .line 20
    return-void
.end method

.method public synthetic constructor <init>(Lako$a;B)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lako;-><init>(Lako$a;)V

    return-void
.end method
