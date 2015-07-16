.class public final Lbej;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mCaptureContext:Lcom/snapchat/android/util/eventbus/SnapCaptureContext;

.field public final mMediabryo:Laji;


# direct methods
.method public constructor <init>(Laji;Lcom/snapchat/android/util/eventbus/SnapCaptureContext;)V
    .locals 1
    .param p1    # Laji;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/util/eventbus/SnapCaptureContext;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {p1}, Lco;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laji;

    iput-object v0, p0, Lbej;->mMediabryo:Laji;

    .line 24
    invoke-static {p2}, Lco;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/eventbus/SnapCaptureContext;

    iput-object v0, p0, Lbej;->mCaptureContext:Lcom/snapchat/android/util/eventbus/SnapCaptureContext;

    .line 25
    return-void
.end method
