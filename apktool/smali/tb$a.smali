.class public final Ltb$a;
.super Lpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation runtime Ltn;
.end annotation


# instance fields
.field private conversationId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "conversation_id"
    .end annotation
.end field

.field final synthetic this$0:Ltb;


# direct methods
.method public constructor <init>(Ltb;Ljava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 41
    iput-object p1, p0, Ltb$a;->this$0:Ltb;

    invoke-direct {p0}, Lpl;-><init>()V

    .line 42
    iput-object p2, p0, Ltb$a;->conversationId:Ljava/lang/String;

    .line 43
    return-void
.end method
