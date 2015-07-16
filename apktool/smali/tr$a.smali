.class public final Ltr$a;
.super Lqc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation runtime Lud;
.end annotation


# instance fields
.field private conversationId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "conversation_id"
    .end annotation
.end field

.field final synthetic this$0:Ltr;


# direct methods
.method public constructor <init>(Ltr;Ljava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 41
    iput-object p1, p0, Ltr$a;->this$0:Ltr;

    invoke-direct {p0}, Lqc;-><init>()V

    .line 42
    iput-object p2, p0, Ltr$a;->conversationId:Ljava/lang/String;

    .line 43
    return-void
.end method
