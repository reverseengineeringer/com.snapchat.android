.class final Lbac$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


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
    .line 65
    iput-object p1, p0, Lbac$2;->this$0:Lbac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lbac$2;->this$0:Lbac;

    iget-object v0, v0, Lbac;->mExceptionHandler:Lazp;

    invoke-virtual {v0, p2}, Lazp;->a(Ljava/lang/Throwable;)V

    .line 70
    return-void
.end method
