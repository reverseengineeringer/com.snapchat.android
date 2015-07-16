.class final Lbbc$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbc;-><init>(Lbah;Lbma;Lcom/snapchat/android/util/debug/ReleaseManager;Lbao;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbbc;


# direct methods
.method constructor <init>(Lbbc;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lbbc$2;->this$0:Lbbc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lbbc$2;->this$0:Lbbc;

    iget-object v0, v0, Lbbc;->mExceptionHandler:Lbao;

    invoke-virtual {v0, p2}, Lbao;->a(Ljava/lang/Throwable;)V

    .line 70
    return-void
.end method
