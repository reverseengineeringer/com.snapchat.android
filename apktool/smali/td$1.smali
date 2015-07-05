.class final Ltd$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/api2/chat/LoadConversationPageTask$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltd;->a(Ljava/lang/String;Z)Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltd;

.field final synthetic val$conversationId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ltd;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Ltd$1;->this$0:Ltd;

    iput-object p2, p0, Ltd$1;->val$conversationId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Ltd$1;->this$0:Ltd;

    invoke-static {v0}, Ltd;->a(Ltd;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Ltd$1;->val$conversationId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 60
    return-void
.end method
