.class public Lbkc;
.super Lbil;
.source "SourceFile"


# instance fields
.field protected replayed:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "replayed"
    .end annotation
.end field

.field protected screenshotCount:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "screenshot_count"
    .end annotation
.end field

.field protected snapId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "snap_id"
    .end annotation
.end field

.field protected timestamp:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "timestamp"
    .end annotation
.end field

.field protected viewed:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "viewed"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lbil;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lbkc;->timestamp:Ljava/lang/Long;

    return-object v0
.end method

.method public final a(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lbkc;->timestamp:Ljava/lang/Long;

    .line 37
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lbkc;->snapId:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lbkc;->snapId:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lbkc;->viewed:Ljava/lang/Boolean;

    .line 73
    return-void
.end method

.method public final b(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lbkc;->screenshotCount:Ljava/lang/Long;

    .line 109
    return-void
.end method

.method public final c()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lbkc;->viewed:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final c(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lbkc;->replayed:Ljava/lang/Boolean;

    .line 91
    return-void
.end method

.method public final d()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lbkc;->replayed:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final e()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lbkc;->screenshotCount:Ljava/lang/Long;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 142
    if-ne p1, p0, :cond_0

    .line 143
    const/4 v0, 0x1

    .line 149
    :goto_0
    return v0

    .line 145
    :cond_0
    instance-of v0, p1, Lbkc;

    if-nez v0, :cond_1

    .line 146
    const/4 v0, 0x0

    goto :goto_0

    .line 148
    :cond_1
    check-cast p1, Lbkc;

    .line 149
    new-instance v0, Lorg/apache/commons/lang3/builder/EqualsBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;-><init>()V

    iget-object v1, p0, Lbkc;->timestamp:Ljava/lang/Long;

    iget-object v2, p1, Lbkc;->timestamp:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkc;->snapId:Ljava/lang/String;

    iget-object v2, p1, Lbkc;->snapId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkc;->viewed:Ljava/lang/Boolean;

    iget-object v2, p1, Lbkc;->viewed:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkc;->replayed:Ljava/lang/Boolean;

    iget-object v2, p1, Lbkc;->replayed:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkc;->screenshotCount:Ljava/lang/Long;

    iget-object v2, p1, Lbkc;->screenshotCount:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals()Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 131
    new-instance v0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;-><init>()V

    iget-object v1, p0, Lbkc;->timestamp:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkc;->snapId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkc;->viewed:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkc;->replayed:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkc;->screenshotCount:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    invoke-static {p0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->reflectionToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
