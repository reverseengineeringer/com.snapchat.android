.class public final Lbbc;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbbc$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AnrReporter"


# instance fields
.field public final mAnrDetector:Lbma;

.field private final mCrashSampler:Lbah;

.field final mExceptionHandler:Lbao;

.field private final mReleaseManager:Lcom/snapchat/android/util/debug/ReleaseManager;


# direct methods
.method constructor <init>(Lbah;Lbma;Lcom/snapchat/android/util/debug/ReleaseManager;Lbao;Landroid/content/Context;)V
    .locals 3
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lbbc;->mCrashSampler:Lbah;

    .line 42
    iput-object p2, p0, Lbbc;->mAnrDetector:Lbma;

    .line 43
    iput-object p3, p0, Lbbc;->mReleaseManager:Lcom/snapchat/android/util/debug/ReleaseManager;

    .line 44
    iput-object p4, p0, Lbbc;->mExceptionHandler:Lbao;

    .line 46
    iget-object v0, p0, Lbbc;->mCrashSampler:Lbah;

    invoke-virtual {v0}, Lbah;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->d()Z

    move-result v0

    .line 48
    new-instance v1, Lbbf;

    const-string v2, "c06b8797877eb662616000c11de0d338"

    invoke-direct {v1, p5, v2, v0}, Lbbf;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 49
    iget-object v0, p0, Lbbc;->mAnrDetector:Lbma;

    invoke-virtual {v0, v1}, Lbma;->a(Lbmc;)V

    .line 51
    iget-object v0, p0, Lbbc;->mAnrDetector:Lbma;

    new-instance v1, Lbbe;

    invoke-direct {v1}, Lbbe;-><init>()V

    invoke-virtual {v0, v1}, Lbma;->a(Lbmc;)V

    .line 54
    :cond_0
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lbbc;->mAnrDetector:Lbma;

    new-instance v1, Lbbc$a;

    const/4 v2, 0x0

    invoke-direct {v1, p5, v2}, Lbbc$a;-><init>(Landroid/content/Context;B)V

    invoke-virtual {v0, v1}, Lbma;->a(Lbmc;)V

    .line 58
    :cond_1
    iget-object v0, p0, Lbbc;->mAnrDetector:Lbma;

    new-instance v1, Lbbc$1;

    invoke-direct {v1, p0}, Lbbc$1;-><init>(Lbbc;)V

    invoke-virtual {v0, v1}, Lbma;->a(Lbmc;)V

    .line 65
    iget-object v0, p0, Lbbc;->mAnrDetector:Lbma;

    new-instance v1, Lbbc$2;

    invoke-direct {v1, p0}, Lbbc$2;-><init>(Lbbc;)V

    iput-object v1, v0, Lbma;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 72
    return-void
.end method
