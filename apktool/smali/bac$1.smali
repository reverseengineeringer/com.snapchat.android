.class final Lbac$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lblb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbac;-><init>(Lazi;Lbkz;Lcom/snapchat/android/util/debug/ReleaseManager;Lazp;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbac;


# direct methods
.method constructor <init>(Lbac;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lbac$1;->this$0:Lbac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lbla;)V
    .locals 2

    .prologue
    .line 61
    const-string v0, "AnrReporter"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    return-void
.end method
