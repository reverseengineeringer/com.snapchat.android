.class public final Lbcz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mIsDoubleTap:Z

.field public final mOriginatingFragment:I

.field public final mRecipients:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lbcz;->mRecipients:Ljava/lang/String;

    .line 10
    iput p2, p0, Lbcz;->mOriginatingFragment:I

    .line 11
    iput-boolean p3, p0, Lbcz;->mIsDoubleTap:Z

    .line 12
    return-void
.end method
