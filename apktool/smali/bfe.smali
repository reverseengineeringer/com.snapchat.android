.class public final Lbfe;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mCaptionText:Ljava/lang/String;

.field public mDuringPresence:Z

.field public mOriginatingFragment:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lbfe;->mOriginatingFragment:I

    .line 14
    iput-object p1, p0, Lbfe;->mCaptionText:Ljava/lang/String;

    .line 15
    iput-boolean p2, p0, Lbfe;->mDuringPresence:Z

    .line 16
    return-void
.end method
