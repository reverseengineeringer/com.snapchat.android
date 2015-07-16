.class final Laod$a;
.super Lqp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation runtime Lud;
.end annotation


# instance fields
.field a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "action"
    .end annotation
.end field

.field b:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pre_auth_token"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lqp;-><init>()V

    .line 56
    iput-object p1, p0, Laod$a;->a:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Laod$a;->b:Ljava/lang/String;

    .line 58
    return-void
.end method
