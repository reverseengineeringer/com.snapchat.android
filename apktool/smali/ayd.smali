.class public final Layd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final PAGE_SIZE:I = 0x1e


# instance fields
.field public mMessageCount:I

.field public mRenderSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/16 v0, 0x1e

    iput v0, p0, Layd;->mRenderSize:I

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Layd;->mMessageCount:I

    .line 17
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 20
    const/16 v0, 0x1e

    iput v0, p0, Layd;->mRenderSize:I

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Layd;->mMessageCount:I

    .line 22
    return-void
.end method
