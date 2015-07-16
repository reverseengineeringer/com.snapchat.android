.class final Lvh$b;
.super Lqc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation runtime Lud;
.end annotation


# instance fields
.field iterToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "offset"
    .end annotation
.end field

.field final synthetic this$0:Lvh;


# direct methods
.method constructor <init>(Lvh;)V
    .locals 1

    .prologue
    .line 46
    iput-object p1, p0, Lvh$b;->this$0:Lvh;

    invoke-direct {p0}, Lqc;-><init>()V

    .line 47
    iget-object v0, p0, Lvh$b;->this$0:Lvh;

    iget-object v0, v0, Lvh;->mIterToken:Ljava/lang/String;

    iput-object v0, p0, Lvh$b;->iterToken:Ljava/lang/String;

    return-void
.end method
