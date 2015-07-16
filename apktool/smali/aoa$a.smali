.class public final Laoa$a;
.super Lqc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation runtime Lud;
.end annotation


# instance fields
.field a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "username"
    .end annotation
.end field

.field b:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "requested_username"
    .end annotation
.end field

.field final synthetic c:Laoa;


# direct methods
.method public constructor <init>(Laoa;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 57
    iput-object p1, p0, Laoa$a;->c:Laoa;

    invoke-direct {p0}, Lqc;-><init>()V

    .line 58
    iput-object p2, p0, Laoa$a;->a:Ljava/lang/String;

    .line 59
    iput-object p3, p0, Laoa$a;->b:Ljava/lang/String;

    .line 60
    return-void
.end method
