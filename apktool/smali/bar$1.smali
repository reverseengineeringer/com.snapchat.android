.class public final Lbar$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbar;

.field final synthetic val$bugDescription:Ljava/lang/String;

.field final synthetic val$deviceInfo:Ljava/lang/String;

.field final synthetic val$imageFile:Ljava/io/File;

.field final synthetic val$logFiles:[Ljava/io/File;

.field final synthetic val$otherEmailToSendTo:Ljava/lang/String;

.field final synthetic val$projectName:Ljava/lang/String;

.field final synthetic val$remoteChatRecipient:Ljava/lang/String;

.field final synthetic val$stepsToRepro:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lbar;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;[Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lbar$1;->this$0:Lbar;

    iput-object p2, p0, Lbar$1;->val$otherEmailToSendTo:Ljava/lang/String;

    iput-object p3, p0, Lbar$1;->val$projectName:Ljava/lang/String;

    iput-object p4, p0, Lbar$1;->val$deviceInfo:Ljava/lang/String;

    iput-object p5, p0, Lbar$1;->val$bugDescription:Ljava/lang/String;

    iput-object p6, p0, Lbar$1;->val$stepsToRepro:Ljava/lang/String;

    iput-object p7, p0, Lbar$1;->val$imageFile:Ljava/io/File;

    iput-object p8, p0, Lbar$1;->val$logFiles:[Ljava/io/File;

    iput-object p9, p0, Lbar$1;->val$remoteChatRecipient:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lakr;->G()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nandroid\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbar$1;->val$otherEmailToSendTo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbar$1;->val$projectName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lbar$1;->val$deviceInfo:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n**BUG_DESCRIPTION**\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbar$1;->val$bugDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n**STEPS_TO_REPRO**\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbar$1;->val$stepsToRepro:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n**ATTACHMENTS**\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v1

    .line 72
    invoke-static {v1}, Lbar;->a(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Lbar;->a(I)Ljava/lang/String;

    move-result-object v5

    .line 74
    const/4 v0, 0x0

    .line 76
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1, v5, v3}, Lcom/snapchat/android/SnapchatApplication;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 77
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 78
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 82
    invoke-static {v0}, Lbgo;->a(Ljava/io/Closeable;)V

    .line 85
    :goto_0
    iget-object v0, p0, Lbar$1;->this$0:Lbar;

    iget-object v1, p0, Lbar$1;->val$imageFile:Ljava/io/File;

    iget-object v3, p0, Lbar$1;->val$logFiles:[Ljava/io/File;

    iget-object v4, p0, Lbar$1;->val$remoteChatRecipient:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lbar;->a(Ljava/io/File;Ljava/lang/StringBuilder;[Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void

    .line 80
    :catch_0
    move-exception v1

    invoke-static {v0}, Lbgo;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 82
    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_1
    invoke-static {v1}, Lbgo;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_1
.end method
