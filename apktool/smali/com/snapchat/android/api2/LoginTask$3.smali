.class final Lcom/snapchat/android/api2/LoginTask$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/api2/LoginTask;->onResult(Lus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/snapchat/android/api2/LoginTask;


# direct methods
.method constructor <init>(Lcom/snapchat/android/api2/LoginTask;)V
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Lcom/snapchat/android/api2/LoginTask$3;->this$0:Lcom/snapchat/android/api2/LoginTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 300
    iget-object v0, p0, Lcom/snapchat/android/api2/LoginTask$3;->this$0:Lcom/snapchat/android/api2/LoginTask;

    const-wide/16 v2, 0x2

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/api2/LoginTask;->access$330(Lcom/snapchat/android/api2/LoginTask;J)J

    .line 301
    iget-object v0, p0, Lcom/snapchat/android/api2/LoginTask$3;->this$0:Lcom/snapchat/android/api2/LoginTask;

    invoke-virtual {v0}, Lcom/snapchat/android/api2/LoginTask;->execute()V

    .line 302
    return-void
.end method
