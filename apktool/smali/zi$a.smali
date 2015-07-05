.class final Lzi$a;
.super Lpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation runtime Ltn;
.end annotation


# instance fields
.field final a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "story_id"
    .end annotation
.end field

.field final synthetic b:Lzi;


# direct methods
.method constructor <init>(Lzi;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lzi$a;->b:Lzi;

    invoke-direct {p0}, Lpl;-><init>()V

    .line 98
    iput-object p2, p0, Lzi$a;->a:Ljava/lang/String;

    .line 99
    return-void
.end method
