.class final Laaf$a;
.super Lqc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laaf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation runtime Lud;
.end annotation


# instance fields
.field final a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "story_id"
    .end annotation
.end field

.field final synthetic b:Laaf;


# direct methods
.method constructor <init>(Laaf;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Laaf$a;->b:Laaf;

    invoke-direct {p0}, Lqc;-><init>()V

    .line 98
    iput-object p2, p0, Laaf$a;->a:Ljava/lang/String;

    .line 99
    return-void
.end method
