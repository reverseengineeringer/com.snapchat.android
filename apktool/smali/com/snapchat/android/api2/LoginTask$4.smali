.class final Lcom/snapchat/android/api2/LoginTask$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/api2/LoginTask;->onJsonResult(Lbjg;Lus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/snapchat/android/api2/LoginTask;

.field final synthetic val$networkResult:Lus;

.field final synthetic val$responsePayload:Lbjg;


# direct methods
.method constructor <init>(Lcom/snapchat/android/api2/LoginTask;Lbjg;Lus;)V
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Lcom/snapchat/android/api2/LoginTask$4;->this$0:Lcom/snapchat/android/api2/LoginTask;

    iput-object p2, p0, Lcom/snapchat/android/api2/LoginTask$4;->val$responsePayload:Lbjg;

    iput-object p3, p0, Lcom/snapchat/android/api2/LoginTask$4;->val$networkResult:Lus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 318
    iget-object v0, p0, Lcom/snapchat/android/api2/LoginTask$4;->this$0:Lcom/snapchat/android/api2/LoginTask;

    iget-object v1, p0, Lcom/snapchat/android/api2/LoginTask$4;->val$responsePayload:Lbjg;

    iget-object v2, p0, Lcom/snapchat/android/api2/LoginTask$4;->val$networkResult:Lus;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/api2/LoginTask;->onJsonResultMainThread(Lbjg;Lus;)V

    .line 319
    return-void
.end method
