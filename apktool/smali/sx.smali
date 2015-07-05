.class public final Lsx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mStatementDesc:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "statement_description"
    .end annotation
.end field

.field private final mSubject:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "subject"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lsx;->mSubject:Ljava/lang/String;

    .line 16
    iput-object p1, p0, Lsx;->mStatementDesc:Ljava/lang/String;

    .line 17
    return-void
.end method
