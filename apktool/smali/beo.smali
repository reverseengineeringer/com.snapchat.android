.class public final Lbeo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mFromPreview:Z

.field public mMediabryo:Laji;


# direct methods
.method public constructor <init>(Laji;Z)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lbeo;->mMediabryo:Laji;

    .line 12
    iput-boolean p2, p0, Lbeo;->mFromPreview:Z

    .line 13
    return-void
.end method
